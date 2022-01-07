
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct property {int dummy; } ;
struct node {char* name; int children; } ;
struct inbuf {int dummy; } ;







 int FTF_FULLPATH ;
 int FTF_NOPS ;
 int add_child (struct node*,struct node*) ;
 int add_property (struct node*,struct property*) ;
 struct node* build_node (int *,int *) ;
 int die (char*,...) ;
 struct property* flat_read_property (struct inbuf*,struct inbuf*,int) ;
 char* flat_read_string (struct inbuf*) ;
 int flat_read_word (struct inbuf*) ;
 int fprintf (int ,char*) ;
 char* nodename_from_path (char const*,char*) ;
 int stderr ;

__attribute__((used)) static struct node *unflatten_tree(struct inbuf *dtbuf,
       struct inbuf *strbuf,
       const char *parent_flatname, int flags)
{
 struct node *node;
 char *flatname;
 uint32_t val;

 node = build_node(((void*)0), ((void*)0));

 flatname = flat_read_string(dtbuf);

 if (flags & FTF_FULLPATH)
  node->name = nodename_from_path(parent_flatname, flatname);
 else
  node->name = flatname;

 do {
  struct property *prop;
  struct node *child;

  val = flat_read_word(dtbuf);
  switch (val) {
  case 128:
   if (node->children)
    fprintf(stderr, "Warning: Flat tree input has "
     "subnodes preceding a property.\n");
   prop = flat_read_property(dtbuf, strbuf, flags);
   add_property(node, prop);
   break;

  case 132:
   child = unflatten_tree(dtbuf,strbuf, flatname, flags);
   add_child(node, child);
   break;

  case 130:
   break;

  case 131:
   die("Premature FDT_END in device tree blob\n");
   break;

  case 129:
   if (!(flags & FTF_NOPS))
    fprintf(stderr, "Warning: NOP tag found in flat tree"
     " version <16\n");


   break;

  default:
   die("Invalid opcode word %08x in device tree blob\n",
       val);
  }
 } while (val != 130);

 return node;
}
