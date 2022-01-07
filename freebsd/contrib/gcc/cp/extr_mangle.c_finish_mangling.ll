; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_finish_mangling.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_finish_mangling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@warn_abi = common dso_local global i64 0, align 8
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OPT_Wabi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"the mangled name of %qD will change in a future version of GCC\00", align 1
@tree = common dso_local global i32 0, align 4
@mangle_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @finish_mangling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @finish_mangling(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @warn_abi, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 2), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @OPT_Wabi, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 1), align 4
  %14 = call i32 @warning(i32 %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %8, %5, %1
  %16 = load i32, i32* @tree, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 8
  %18 = call i32 @VEC_truncate(i32 %16, i32 %17, i32 0)
  %19 = call i32 @write_char(i8 signext 0)
  %20 = load i32, i32* @mangle_obstack, align 4
  %21 = call i64 @obstack_finish(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  ret i8* %22
}

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @VEC_truncate(i32, i32, i32) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i64 @obstack_finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
