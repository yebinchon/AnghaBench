; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c__bfd_coff_arm_set_private_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c__bfd_coff_arm_set_private_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_APCS26 = common dso_local global i32 0, align 4
@F_APCS_26 = common dso_local global i32 0, align 4
@F_APCS_FLOAT = common dso_local global i32 0, align 4
@F_PIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@F_INTERWORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"Warning: Not setting interworking flag of %B since it has already been specified as non-interworking\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Warning: Clearing the interworking flag of %B due to outside request\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @_bfd_coff_arm_set_private_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bfd_coff_arm_set_private_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BFD_ASSERT(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @F_APCS26, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @F_APCS_26, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @APCS_SET(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @APCS_26_FLAG(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @APCS_FLOAT_FLAG(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @F_APCS_FLOAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @PIC_FLAG(i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @F_PIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %28, %23
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %35, %18
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @F_APCS_FLOAT, align 4
  %47 = load i32, i32* @F_PIC, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @SET_APCS_FLAGS(i32* %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @F_INTERWORK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @INTERWORK_SET(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %44
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @INTERWORK_FLAG(i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = call i32 @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @_bfd_error_handler(i32 %70, i32* %71)
  br label %77

73:                                               ; preds = %66
  %74 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @_bfd_error_handler(i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %73, %69
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %61, %44
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @SET_INTERWORK_FLAG(i32* %79, i32 %80)
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %42
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @APCS_SET(i32*) #1

declare dso_local i32 @APCS_26_FLAG(i32*) #1

declare dso_local i32 @APCS_FLOAT_FLAG(i32*) #1

declare dso_local i32 @PIC_FLAG(i32*) #1

declare dso_local i32 @SET_APCS_FLAGS(i32*, i32) #1

declare dso_local i64 @INTERWORK_SET(i32*) #1

declare dso_local i32 @INTERWORK_FLAG(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SET_INTERWORK_FLAG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
