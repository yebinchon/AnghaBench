; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [454 x i8] c"/* Generated automatically by the program `genrecog' from the target\0A   machine description file.  */\0A\0A#include \22config.h\22\0A#include \22system.h\22\0A#include \22coretypes.h\22\0A#include \22tm.h\22\0A#include \22rtl.h\22\0A#include \22tm_p.h\22\0A#include \22function.h\22\0A#include \22insn-config.h\22\0A#include \22recog.h\22\0A#include \22real.h\22\0A#include \22output.h\22\0A#include \22flags.h\22\0A#include \22hard-reg-set.h\22\0A#include \22resource.h\22\0A#include \22toplev.h\22\0A#include \22reload.h\22\0A#include \22tm-constrs.h\22\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [432 x i8] c"\0A/* `recog' contains a decision tree that recognizes whether the rtx\0A   X0 is a valid instruction.\0A\0A   recog returns -1 if the rtx is not valid.  If the rtx is valid, recog\0A   returns a nonnegative number which is the insn code number for the\0A   pattern that matched.  This is the same as the order in the machine\0A   description of the entry that matched.  This number can be used as an\0A   index into `insn_data' and other tables.\0A\00", align 1
@.str.2 = private unnamed_addr constant [360 x i8] c"   The third argument to recog is an optional pointer to an int.  If\0A   present, recog will accept a pattern if it matches except for missing\0A   CLOBBER expressions at the end.  In that case, the value pointed to by\0A   the optional pointer will be set to the number of CLOBBERs that need\0A   to be added (it should be initialized to zero by the caller).  If it\00", align 1
@.str.3 = private unnamed_addr constant [185 x i8] c"   is set nonzero, the caller should allocate a PARALLEL of the\0A   appropriate size, copy the initial entries, and call add_clobbers\0A   (found in insn-emit.c) to fill in the CLOBBERs.\0A\00", align 1
@.str.4 = private unnamed_addr constant [343 x i8] c"\0A   The function split_insns returns 0 if the rtl could not\0A   be split or the split rtl as an INSN list if it can be.\0A\0A   The function peephole2_insns returns 0 if the rtl could not\0A   be matched. If there was a match, the new rtl is returned in an INSN list,\0A   and LAST_INSN will point to the last recognized insn in the old sequence.\0A*/\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_header() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([454 x i8], [454 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @puts(i8* getelementptr inbounds ([432 x i8], [432 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @puts(i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @puts(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @puts(i8* getelementptr inbounds ([343 x i8], [343 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
