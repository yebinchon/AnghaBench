; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_26__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_25__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }

@.str = private unnamed_addr constant [36 x i8] c"undeclared unit or reservation `%s'\00", align 1
@rm_reserv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_28__*)* @process_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @process_regexp(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %6 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %163 [
    i32 128, label %9
    i32 129, label %66
    i32 133, label %95
    i32 131, label %124
    i32 130, label %153
    i32 132, label %162
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = call %struct.TYPE_31__* @REGEXP_UNIT(%struct.TYPE_28__* %10)
  %12 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_30__* @find_decl(i32 %13)
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %3, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = icmp eq %struct.TYPE_30__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %19 = call %struct.TYPE_31__* @REGEXP_UNIT(%struct.TYPE_28__* %18)
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %65

23:                                               ; preds = %9
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %62 [
    i32 134, label %27
    i32 135, label %36
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %29 = call %struct.TYPE_27__* @DECL_UNIT(%struct.TYPE_30__* %28)
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %32 = call %struct.TYPE_27__* @DECL_UNIT(%struct.TYPE_30__* %31)
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %34 = call %struct.TYPE_31__* @REGEXP_UNIT(%struct.TYPE_28__* %33)
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  store %struct.TYPE_27__* %32, %struct.TYPE_27__** %35, align 8
  br label %64

36:                                               ; preds = %23
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %38 = call %struct.TYPE_29__* @DECL_RESERV(%struct.TYPE_30__* %37)
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = call %struct.TYPE_28__* @create_node(i32 4)
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %4, align 8
  %41 = load i32, i32* @rm_reserv, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %50 = call %struct.TYPE_31__* @REGEXP_UNIT(%struct.TYPE_28__* %49)
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %54 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_28__* %53)
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %57 = call %struct.TYPE_29__* @DECL_RESERV(%struct.TYPE_30__* %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %59 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_28__* %58)
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %60, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %2, align 8
  br label %64

62:                                               ; preds = %23
  %63 = call i32 (...) @gcc_unreachable()
  br label %64

64:                                               ; preds = %62, %36, %27
  br label %65

65:                                               ; preds = %64, %17
  br label %165

66:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %70 = call %struct.TYPE_32__* @REGEXP_SEQUENCE(%struct.TYPE_28__* %69)
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %67
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %76 = call %struct.TYPE_32__* @REGEXP_SEQUENCE(%struct.TYPE_28__* %75)
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %78, i64 %80
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  %83 = call %struct.TYPE_28__* @process_regexp(%struct.TYPE_28__* %82)
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %85 = call %struct.TYPE_32__* @REGEXP_SEQUENCE(%struct.TYPE_28__* %84)
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %87, i64 %89
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %90, align 8
  br label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %67

94:                                               ; preds = %67
  br label %165

95:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %99 = call %struct.TYPE_26__* @REGEXP_ALLOF(%struct.TYPE_28__* %98)
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %105 = call %struct.TYPE_26__* @REGEXP_ALLOF(%struct.TYPE_28__* %104)
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %107, i64 %109
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %110, align 8
  %112 = call %struct.TYPE_28__* @process_regexp(%struct.TYPE_28__* %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %114 = call %struct.TYPE_26__* @REGEXP_ALLOF(%struct.TYPE_28__* %113)
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %116, i64 %118
  store %struct.TYPE_28__* %112, %struct.TYPE_28__** %119, align 8
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %96

123:                                              ; preds = %96
  br label %165

124:                                              ; preds = %1
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %128 = call %struct.TYPE_25__* @REGEXP_ONEOF(%struct.TYPE_28__* %127)
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %125
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %134 = call %struct.TYPE_25__* @REGEXP_ONEOF(%struct.TYPE_28__* %133)
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %136, i64 %138
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = call %struct.TYPE_28__* @process_regexp(%struct.TYPE_28__* %140)
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %143 = call %struct.TYPE_25__* @REGEXP_ONEOF(%struct.TYPE_28__* %142)
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %145, i64 %147
  store %struct.TYPE_28__* %141, %struct.TYPE_28__** %148, align 8
  br label %149

149:                                              ; preds = %132
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %125

152:                                              ; preds = %125
  br label %165

153:                                              ; preds = %1
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %155 = call %struct.TYPE_24__* @REGEXP_REPEAT(%struct.TYPE_28__* %154)
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %156, align 8
  %158 = call %struct.TYPE_28__* @process_regexp(%struct.TYPE_28__* %157)
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %160 = call %struct.TYPE_24__* @REGEXP_REPEAT(%struct.TYPE_28__* %159)
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  store %struct.TYPE_28__* %158, %struct.TYPE_28__** %161, align 8
  br label %165

162:                                              ; preds = %1
  br label %165

163:                                              ; preds = %1
  %164 = call i32 (...) @gcc_unreachable()
  br label %165

165:                                              ; preds = %163, %162, %153, %152, %123, %94, %65
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  ret %struct.TYPE_28__* %166
}

declare dso_local %struct.TYPE_30__* @find_decl(i32) #1

declare dso_local %struct.TYPE_31__* @REGEXP_UNIT(%struct.TYPE_28__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local %struct.TYPE_27__* @DECL_UNIT(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_29__* @DECL_RESERV(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_28__* @create_node(i32) #1

declare dso_local %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_28__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local %struct.TYPE_32__* @REGEXP_SEQUENCE(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @REGEXP_ALLOF(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_25__* @REGEXP_ONEOF(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_24__* @REGEXP_REPEAT(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
