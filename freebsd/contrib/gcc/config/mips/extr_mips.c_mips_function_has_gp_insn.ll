; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_function_has_gp_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_function_has_gp_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@GOT_UNSET = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mips_function_has_gp_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_function_has_gp_insn() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @push_topmost_sequence()
  %10 = call i64 (...) @get_insns()
  store i64 %10, i64* %1, align 8
  br label %11

11:                                               ; preds = %43, %8
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @INSN_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @PATTERN(i64 %19)
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @USE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @PATTERN(i64 %25)
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @CLOBBER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i64, i64* %1, align 8
  %32 = call i64 @get_attr_got(i64 %31)
  %33 = load i64, i64* @GOT_UNSET, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @PATTERN(i64 %36)
  %38 = load i32, i32* @VOIDmode, align 4
  %39 = call i64 @small_data_pattern(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  br label %46

42:                                               ; preds = %35, %24, %18, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %1, align 8
  %45 = call i64 @NEXT_INSN(i64 %44)
  store i64 %45, i64* %1, align 8
  br label %11

46:                                               ; preds = %41, %11
  %47 = call i32 (...) @pop_topmost_sequence()
  %48 = load i64, i64* %1, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  ret i32 %60
}

declare dso_local i32 @push_topmost_sequence(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @get_attr_got(i64) #1

declare dso_local i64 @small_data_pattern(i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @pop_topmost_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
