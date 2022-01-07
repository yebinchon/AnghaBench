; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_conditions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconditions.c_write_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [654 x i8] c"/* Structure definition duplicated from gensupport.h rather than\0A   drag in that file and its dependencies.  */\0Astruct c_test\0A{\0A  const char *expr;\0A  int value;\0A};\0A\0A/* This table lists each condition found in the machine description.\0A   Each condition is mapped to its truth value (0 or 1), or -1 if that\0A   cannot be calculated at compile time.\0A   If we don't have __builtin_constant_p, or it's not acceptable in array\0A   initializers, fall back to assuming that all conditions potentially\0A   vary at run time.  It works in 3.0.1 and later; 3.0 only when not\0A   optimizing.  */\0A\0A#if GCC_VERSION >= 3001\0Astatic const struct c_test insn_conditions[] = {\0A\00", align 1
@write_one_condition = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\0A};\0A#endif /* gcc >= 3.0.1 */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_conditions() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([654 x i8], [654 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @write_one_condition, align 4
  %3 = call i32 @traverse_c_tests(i32 %2, i32 0)
  %4 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @traverse_c_tests(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
