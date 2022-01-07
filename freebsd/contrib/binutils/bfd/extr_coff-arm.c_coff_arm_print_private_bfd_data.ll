; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_print_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_print_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"private flags = %x:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" [APCS-%d]\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c" [floats passed in float registers]\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" [floats passed in integer registers]\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" [position independent]\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" [absolute position]\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" [interworking flag not initialised]\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c" [interworking supported]\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c" [interworking not supported]\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @coff_arm_print_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_arm_print_private_bfd_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BFD_ASSERT(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call %struct.TYPE_2__* @coff_data(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* %18, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @APCS_SET(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @APCS_26_FLAG(i32* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 26, i32 32
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @APCS_FLOAT_FLAG(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* %40)
  br label %46

42:                                               ; preds = %27
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @PIC_FLAG(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* %52)
  br label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @INTERWORK_SET(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* %65)
  br label %80

67:                                               ; preds = %59
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @INTERWORK_FLAG(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* %73)
  br label %79

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @fputc(i8 signext 10, i32* %81)
  %83 = load i32, i32* @TRUE, align 4
  ret i32 %83
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_2__* @coff_data(i32*) #1

declare dso_local i64 @APCS_SET(i32*) #1

declare dso_local i64 @APCS_26_FLAG(i32*) #1

declare dso_local i64 @APCS_FLOAT_FLAG(i32*) #1

declare dso_local i64 @PIC_FLAG(i32*) #1

declare dso_local i32 @INTERWORK_SET(i32*) #1

declare dso_local i64 @INTERWORK_FLAG(i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
