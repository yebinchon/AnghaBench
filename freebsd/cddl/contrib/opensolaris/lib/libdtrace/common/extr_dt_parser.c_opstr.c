
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
opstr(int op)
{
 switch (op) {
 case 177: return (",");
 case 172: return ("...");
 case 182: return ("=");
 case 184: return ("+=");
 case 132: return ("-=");
 case 151: return ("*=");
 case 174: return ("/=");
 case 153: return ("%=");
 case 183: return ("&=");
 case 128: return ("^=");
 case 148: return ("|=");
 case 157: return ("<<=");
 case 138: return (">>=");
 case 142: return ("?");
 case 178: return (":");
 case 160: return ("||");
 case 155: return ("^^");
 case 164: return ("&&");
 case 179: return ("|");
 case 129: return ("^");
 case 181: return ("&");
 case 171: return ("==");
 case 150: return ("!=");
 case 156: return ("<");
 case 162: return ("<=");
 case 169: return (">");
 case 170: return (">=");
 case 158: return ("<<");
 case 139: return (">>");
 case 187: return ("+");
 case 134: return ("-");
 case 152: return ("*");
 case 175: return ("/");
 case 154: return ("%");
 case 161: return ("!");
 case 180: return ("~");
 case 186: return ("++");
 case 144: return ("++");
 case 146: return ("++");
 case 133: return ("--");
 case 145: return ("--");
 case 147: return ("--");
 case 165: return ("+");
 case 167: return ("-");
 case 176: return ("*");
 case 185: return ("&");
 case 149: return ("offsetof");
 case 137: return ("sizeof");
 case 135: return ("stringof");
 case 130: return ("xlate");
 case 159: return ("(");
 case 140: return (")");
 case 163: return ("[");
 case 141: return ("]");
 case 143: return ("->");
 case 173: return (".");
 case 136: return ("<string>");
 case 168: return ("<ident>");
 case 131: return ("<type>");
 case 166: return ("<int>");
 default: return ("<?>");
 }
}
