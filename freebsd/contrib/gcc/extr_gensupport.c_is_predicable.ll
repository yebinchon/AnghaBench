; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_is_predicable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_is_predicable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_elem = type { i32, i32 }

@predicable_default = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"predicable\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"multiple alternatives for `predicable'\00", align 1
@errors = common dso_local global i32 0, align 4
@ATTR = common dso_local global i32 0, align 4
@CONST_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"non-constant value for `predicable'\00", align 1
@predicable_true = common dso_local global i8* null, align 8
@predicable_false = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"unknown value `%s' for `predicable' attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_elem*)* @is_predicable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_predicable(%struct.queue_elem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue_elem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.queue_elem* %0, %struct.queue_elem** %3, align 8
  %8 = load %struct.queue_elem*, %struct.queue_elem** %3, align 8
  %9 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @XVEC(i32 %10, i32 4)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @predicable_default, align 4
  store i32 %15, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GET_NUM_ELEM(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %80, %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @RTVEC_ELT(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GET_CODE(i32 %27)
  switch i32 %28, label %77 [
    i32 129, label %29
    i32 128, label %38
    i32 130, label %49
  ]

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @XSTR(i32 %30, i32 0)
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @XSTR(i32 %35, i32 1)
  store i8* %36, i8** %5, align 8
  br label %85

37:                                               ; preds = %29
  br label %79

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @XSTR(i32 %39, i32 0)
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.queue_elem*, %struct.queue_elem** %3, align 8
  %45 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @message_with_line(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  store i32 0, i32* %2, align 4
  br label %112

48:                                               ; preds = %38
  br label %79

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SET_DEST(i32 %50)
  %52 = call i32 @GET_CODE(i32 %51)
  %53 = load i32, i32* @ATTR, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @SET_DEST(i32 %56)
  %58 = call i8* @XSTR(i32 %57, i32 0)
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  br label %79

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @SET_SRC(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @GET_CODE(i32 %65)
  %67 = load i32, i32* @CONST_STRING, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @XSTR(i32 %70, i32 0)
  store i8* %71, i8** %5, align 8
  br label %85

72:                                               ; preds = %62
  %73 = load %struct.queue_elem*, %struct.queue_elem** %3, align 8
  %74 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @message_with_line(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  store i32 0, i32* %2, align 4
  br label %112

77:                                               ; preds = %23
  %78 = call i32 (...) @gcc_unreachable()
  br label %79

79:                                               ; preds = %77, %61, %48, %37
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %6, align 4
  br label %20

83:                                               ; preds = %20
  %84 = load i32, i32* @predicable_default, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %69, %34
  %86 = load i8*, i8** %5, align 8
  %87 = call i32* @strchr(i8* %86, i8 signext 44)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.queue_elem*, %struct.queue_elem** %3, align 8
  %91 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @message_with_line(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  store i32 0, i32* %2, align 4
  br label %112

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** @predicable_true, align 8
  %97 = call i64 @strcmp(i8* %95, i8* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %2, align 4
  br label %112

100:                                              ; preds = %94
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** @predicable_false, align 8
  %103 = call i64 @strcmp(i8* %101, i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %112

106:                                              ; preds = %100
  %107 = load %struct.queue_elem*, %struct.queue_elem** %3, align 8
  %108 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 (i32, i8*, ...) @message_with_line(i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  store i32 1, i32* @errors, align 4
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %105, %99, %89, %83, %72, %43, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @XVEC(i32, i32) #1

declare dso_local i32 @GET_NUM_ELEM(i32) #1

declare dso_local i32 @RTVEC_ELT(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @message_with_line(i32, i8*, ...) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
