; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@CXT_RA = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@CXT_EPC = common dso_local global i32 0, align 4
@CXT_MDHI = common dso_local global i32 0, align 4
@CXT_MDLO = common dso_local global i32 0, align 4
@CXT_CAUSE = common dso_local global i32 0, align 4
@PS_REGNUM = common dso_local global i32 0, align 4
@DEPRECATED_FP_REGNUM = common dso_local global i32 0, align 4
@UNUSED_REGNUM = common dso_local global i32 0, align 4
@FIRST_EMBED_REGNUM = common dso_local global i32 0, align 4
@LAST_EMBED_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @supply_gregset(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32** %0, i32*** %2, align 8
  %7 = load i32**, i32*** %2, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32* %9, i32** %4, align 8
  %10 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CXT_RA, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @supply_register(i32 %21, i8* %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* @current_gdbarch, align 4
  %33 = call %struct.TYPE_2__* @mips_regnum(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @CXT_EPC, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @supply_register(i32 %35, i8* %40)
  %42 = load i32, i32* @current_gdbarch, align 4
  %43 = call %struct.TYPE_2__* @mips_regnum(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @CXT_MDHI, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @supply_register(i32 %45, i8* %50)
  %52 = load i32, i32* @current_gdbarch, align 4
  %53 = call %struct.TYPE_2__* @mips_regnum(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @CXT_MDLO, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @supply_register(i32 %55, i8* %60)
  %62 = load i32, i32* @current_gdbarch, align 4
  %63 = call %struct.TYPE_2__* @mips_regnum(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @CXT_CAUSE, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @supply_register(i32 %65, i8* %70)
  %72 = load i32, i32* @PS_REGNUM, align 4
  %73 = call i32 @supply_register(i32 %72, i8* %13)
  %74 = load i32, i32* @current_gdbarch, align 4
  %75 = call %struct.TYPE_2__* @mips_regnum(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @supply_register(i32 %77, i8* %13)
  %79 = load i32, i32* @DEPRECATED_FP_REGNUM, align 4
  %80 = call i32 @supply_register(i32 %79, i8* %13)
  %81 = load i32, i32* @UNUSED_REGNUM, align 4
  %82 = call i32 @supply_register(i32 %81, i8* %13)
  %83 = load i32, i32* @FIRST_EMBED_REGNUM, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %91, %31
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @LAST_EMBED_REGNUM, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @supply_register(i32 %89, i8* %13)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %84

94:                                               ; preds = %84
  %95 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
