; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_print_wires.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_print_wires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@localnets = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"No networks\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Network: wire=\22%s\22 (netnumber=%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Network %d: wire=\22%s\22 (netnumber=%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @print_wires() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  store i32 1024, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @SALLOC(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %82

13:                                               ; preds = %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localnets, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @xstrlcpy(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %1, align 8
  br label %82

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localnets, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localnets, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localnets, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %1, align 8
  br label %82

37:                                               ; preds = %21
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  store i32 1, i32* %4, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @localnets, align 8
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %2, align 8
  br label %41

41:                                               ; preds = %74, %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %80

44:                                               ; preds = %41
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i8*, i32, i32, ...) @xsnprintf(i8* %45, i32 256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49, i32 %52)
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %55 = call i64 @strlen(i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @xrealloc(i8* %66, i32 %67)
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %63, %44
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @xstrlcat(i8* %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %41

80:                                               ; preds = %41
  %81 = load i8*, i8** %5, align 8
  store i8* %81, i8** %1, align 8
  br label %82

82:                                               ; preds = %80, %26, %16, %12
  %83 = load i8*, i8** %1, align 8
  ret i8* %83
}

declare dso_local i8* @SALLOC(i32) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
