; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_fill_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_fill_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@deprecated_registers = common dso_local global i32* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@CXT_EPC = common dso_local global i32 0, align 4
@CXT_CAUSE = common dso_local global i32 0, align 4
@CXT_MDHI = common dso_local global i32 0, align 4
@CXT_MDLO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_gregset(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32**, i32*** %3, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 32
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16, %13
  %21 = load i32*, i32** @deprecated_registers, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @current_gdbarch, align 4
  %40 = call %struct.TYPE_2__* @mips_regnum(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37, %34
  %45 = load i32*, i32** @deprecated_registers, align 8
  %46 = load i32, i32* @current_gdbarch, align 4
  %47 = call %struct.TYPE_2__* @mips_regnum(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %49)
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @CXT_EPC, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %44, %37
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @current_gdbarch, align 4
  %63 = call %struct.TYPE_2__* @mips_regnum(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %60, %57
  %68 = load i32*, i32** @deprecated_registers, align 8
  %69 = load i32, i32* @current_gdbarch, align 4
  %70 = call %struct.TYPE_2__* @mips_regnum(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %72)
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @CXT_CAUSE, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %60
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @current_gdbarch, align 4
  %86 = call %struct.TYPE_2__* @mips_regnum(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %83, %80
  %91 = load i32*, i32** @deprecated_registers, align 8
  %92 = load i32, i32* @current_gdbarch, align 4
  %93 = call %struct.TYPE_2__* @mips_regnum(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %95)
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @CXT_MDHI, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %90, %83
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @current_gdbarch, align 4
  %109 = call %struct.TYPE_2__* @mips_regnum(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %106, %103
  %114 = load i32*, i32** @deprecated_registers, align 8
  %115 = load i32, i32* @current_gdbarch, align 4
  %116 = call %struct.TYPE_2__* @mips_regnum(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %118)
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @CXT_MDLO, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %113, %106
  ret void
}

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
