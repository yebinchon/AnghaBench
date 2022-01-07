; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_identify_predicable_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_identify_predicable_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_elem = type { i32, i32, %struct.queue_elem* }
%struct.TYPE_2__ = type { i32 }

@define_attr_queue = common dso_local global %struct.queue_elem* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"predicable\00", align 1
@define_cond_exec_queue = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"attribute `predicable' not defined\00", align 1
@errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"attribute `predicable' is not a boolean\00", align 1
@predicable_true = common dso_local global i8* null, align 8
@predicable_false = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"attribute `predicable' cannot be const\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"attribute `predicable' must have a constant default\00", align 1
@predicable_default = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"unknown value `%s' for `predicable' attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @identify_predicable_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @identify_predicable_attribute() #0 {
  %1 = alloca %struct.queue_elem*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load %struct.queue_elem*, %struct.queue_elem** @define_attr_queue, align 8
  store %struct.queue_elem* %5, %struct.queue_elem** %1, align 8
  br label %6

6:                                                ; preds = %18, %0
  %7 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %8 = icmp ne %struct.queue_elem* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %11 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @XSTR(i32 %12, i32 0)
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %27

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %20 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %19, i32 0, i32 2
  %21 = load %struct.queue_elem*, %struct.queue_elem** %20, align 8
  store %struct.queue_elem* %21, %struct.queue_elem** %1, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @define_cond_exec_queue, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @message_with_line(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  br label %117

27:                                               ; preds = %16
  %28 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %29 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @XSTR(i32 %30, i32 1)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @xstrdup(i8* %32)
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 44)
  store i8* %35, i8** %2, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %2, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 44)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %27
  %44 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %45 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @message_with_line(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %43
  br label %117

54:                                               ; preds = %38
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %2, align 8
  store i8* %57, i8** @predicable_true, align 8
  %58 = load i8*, i8** %3, align 8
  store i8* %58, i8** @predicable_false, align 8
  %59 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %60 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @XEXP(i32 %61, i32 2)
  %63 = call i32 @GET_CODE(i32 %62)
  switch i32 %63, label %81 [
    i32 128, label %64
    i32 129, label %70
  ]

64:                                               ; preds = %54
  %65 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %66 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @XEXP(i32 %67, i32 2)
  %69 = call i8* @XSTR(i32 %68, i32 0)
  store i8* %69, i8** %4, align 8
  br label %92

70:                                               ; preds = %54
  %71 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %72 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @message_with_line(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %77, %70
  br label %117

81:                                               ; preds = %54
  %82 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %83 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @message_with_line(i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @errors, align 4
  %86 = load i8*, i8** %3, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %88, %81
  br label %117

92:                                               ; preds = %64
  %93 = load i8*, i8** %4, align 8
  %94 = load i8*, i8** %2, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* @predicable_default, align 4
  br label %117

98:                                               ; preds = %92
  %99 = load i8*, i8** %4, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strcmp(i8* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* @predicable_default, align 4
  br label %116

104:                                              ; preds = %98
  %105 = load %struct.queue_elem*, %struct.queue_elem** %1, align 8
  %106 = getelementptr inbounds %struct.queue_elem, %struct.queue_elem* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i32, i8*, ...) @message_with_line(i32 %107, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  store i32 1, i32* @errors, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @free(i8* %113)
  br label %115

115:                                              ; preds = %112, %104
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %22, %53, %80, %91, %116, %97
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @message_with_line(i32, i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
