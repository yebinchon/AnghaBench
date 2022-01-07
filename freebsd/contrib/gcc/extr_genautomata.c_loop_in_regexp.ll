; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_loop_in_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_loop_in_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }

@dm_reserv = common dso_local global i32 0, align 4
@curr_loop_pass_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @loop_in_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_in_regexp(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = icmp eq %struct.TYPE_20__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

10:                                               ; preds = %2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %141 [
    i32 128, label %14
    i32 130, label %15
    i32 129, label %55
    i32 134, label %81
    i32 132, label %107
    i32 131, label %133
    i32 133, label %140
  ]

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %143

15:                                               ; preds = %10
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @dm_reserv, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_20__* %22)
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = call %struct.TYPE_19__* @DECL_RESERV(%struct.TYPE_21__* %26)
  %28 = icmp eq %struct.TYPE_19__* %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %143

30:                                               ; preds = %21, %15
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_20__* %31)
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @curr_loop_pass_num, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %143

40:                                               ; preds = %30
  %41 = load i32, i32* @curr_loop_pass_num, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_20__* %42)
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_20__* %47)
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = call i32 @loop_in_regexp(%struct.TYPE_20__* %52, %struct.TYPE_21__* %53)
  store i32 %54, i32* %3, align 4
  br label %143

55:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_20__* %58)
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_20__* %64)
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %67, i64 %69
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = call i32 @loop_in_regexp(%struct.TYPE_20__* %71, %struct.TYPE_21__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %143

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %56

80:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %143

81:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = call %struct.TYPE_18__* @REGEXP_ALLOF(%struct.TYPE_20__* %84)
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = call %struct.TYPE_18__* @REGEXP_ALLOF(%struct.TYPE_20__* %90)
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %93, i64 %95
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = call i32 @loop_in_regexp(%struct.TYPE_20__* %97, %struct.TYPE_21__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 1, i32* %3, align 4
  br label %143

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %82

106:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %143

107:                                              ; preds = %10
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %129, %107
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = call %struct.TYPE_17__* @REGEXP_ONEOF(%struct.TYPE_20__* %110)
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %117 = call %struct.TYPE_17__* @REGEXP_ONEOF(%struct.TYPE_20__* %116)
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %119, i64 %121
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = call i32 @loop_in_regexp(%struct.TYPE_20__* %123, %struct.TYPE_21__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %143

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %108

132:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %143

133:                                              ; preds = %10
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = call %struct.TYPE_24__* @REGEXP_REPEAT(%struct.TYPE_20__* %134)
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = call i32 @loop_in_regexp(%struct.TYPE_20__* %137, %struct.TYPE_21__* %138)
  store i32 %139, i32* %3, align 4
  br label %143

140:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %143

141:                                              ; preds = %10
  %142 = call i32 (...) @gcc_unreachable()
  br label %143

143:                                              ; preds = %9, %14, %29, %39, %40, %75, %80, %101, %106, %127, %132, %133, %140, %141
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @DECL_RESERV(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_18__* @REGEXP_ALLOF(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @REGEXP_ONEOF(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_24__* @REGEXP_REPEAT(%struct.TYPE_20__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
