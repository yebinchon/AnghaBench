; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1057 x i8] c"/* Generated automatically by the program `genconditions' from the target\0A   machine description file.  */\0A\0A#include \22bconfig.h\22\0A#include \22system.h\22\0A\0A/* It is necessary, but not entirely safe, to include the headers below\0A   in a generator program.  As a defensive measure, don't do so when the\0A   table isn't going to have anything in it.  */\0A#if GCC_VERSION >= 3001\0A\0A/* Do not allow checking to confuse the issue.  */\0A#undef ENABLE_CHECKING\0A#undef ENABLE_TREE_CHECKING\0A#undef ENABLE_RTL_CHECKING\0A#undef ENABLE_RTL_FLAG_CHECKING\0A#undef ENABLE_GC_CHECKING\0A#undef ENABLE_GC_ALWAYS_COLLECT\0A\0A#include \22coretypes.h\22\0A#include \22tm.h\22\0A#include \22insn-constants.h\22\0A#include \22rtl.h\22\0A#include \22tm_p.h\22\0A#include \22function.h\22\0A\0A/* Fake - insn-config.h doesn't exist yet.  */\0A#define MAX_RECOG_OPERANDS 10\0A#define MAX_DUP_OPERANDS 10\0A#define MAX_INSNS_PER_SPLIT 5\0A\0A#include \22regs.h\22\0A#include \22recog.h\22\0A#include \22real.h\22\0A#include \22output.h\22\0A#include \22flags.h\22\0A#include \22hard-reg-set.h\22\0A#include \22resource.h\22\0A#include \22toplev.h\22\0A#include \22reload.h\22\0A#include \22tm-constrs.h\22\0A\00", align 1
@saw_eh_return = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"#define HAVE_eh_return 1\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22except.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"/* Dummy external declarations.  */\0Aextern rtx insn;\0Aextern rtx ins1;\0Aextern rtx operands[];\0A\0A#endif /* gcc >= 3.0.1 */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_header() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* @saw_eh_return, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @puts(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
