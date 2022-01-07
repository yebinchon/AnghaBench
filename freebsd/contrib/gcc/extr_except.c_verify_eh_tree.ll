; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_verify_eh_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_verify_eh_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.function = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.eh_region* }
%struct.eh_region = type { i32, %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, i64 }

@eh_region = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"region_array is corrupted for region %i\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"outer block of region %i is wrong\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"region %i may contain throw and is contained in region that may not\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"negative nesting depth of region %i\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"tree list ends on depth %i\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"array does not match the region tree\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"verify_eh_tree failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_eh_tree(%struct.function* %0) #0 {
  %2 = alloca %struct.function*, align 8
  %3 = alloca %struct.eh_region*, align 8
  %4 = alloca %struct.eh_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.function* %0, %struct.function** %2, align 8
  store %struct.eh_region* null, %struct.eh_region** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.function*, %struct.function** %2, align 8
  %11 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.eh_region*, %struct.eh_region** %13, align 8
  store %struct.eh_region* %14, %struct.eh_region** %3, align 8
  %15 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %16 = icmp ne %struct.eh_region* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %180

18:                                               ; preds = %1
  %19 = load %struct.function*, %struct.function** %2, align 8
  %20 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %52, %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load i32, i32* @eh_region, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.eh_region* @VEC_index(i32 %28, i32 %33, i32 %34)
  store %struct.eh_region* %35, %struct.eh_region** %3, align 8
  %36 = icmp ne %struct.eh_region* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %41 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  br label %24

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55, %179
  %57 = load i32, i32* @eh_region, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %64 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.eh_region* @VEC_index(i32 %57, i32 %62, i32 %65)
  %67 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %68 = icmp ne %struct.eh_region* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %71 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %76 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %75, i32 0, i32 2
  %77 = load %struct.eh_region*, %struct.eh_region** %76, align 8
  %78 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %79 = icmp ne %struct.eh_region* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %82 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %87 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %92 = icmp ne %struct.eh_region* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %95 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %100 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %98, %93, %90, %85
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %108 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %115 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %114, i32 0, i32 3
  %116 = load %struct.eh_region*, %struct.eh_region** %115, align 8
  %117 = icmp ne %struct.eh_region* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  store %struct.eh_region* %119, %struct.eh_region** %4, align 8
  %120 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %121 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %120, i32 0, i32 3
  %122 = load %struct.eh_region*, %struct.eh_region** %121, align 8
  store %struct.eh_region* %122, %struct.eh_region** %3, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %179

125:                                              ; preds = %111
  %126 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %127 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %126, i32 0, i32 1
  %128 = load %struct.eh_region*, %struct.eh_region** %127, align 8
  %129 = icmp ne %struct.eh_region* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %132 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %131, i32 0, i32 1
  %133 = load %struct.eh_region*, %struct.eh_region** %132, align 8
  store %struct.eh_region* %133, %struct.eh_region** %3, align 8
  br label %178

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %169, %134
  %136 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %137 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %136, i32 0, i32 2
  %138 = load %struct.eh_region*, %struct.eh_region** %137, align 8
  store %struct.eh_region* %138, %struct.eh_region** %3, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %9, align 4
  %141 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %142 = icmp eq %struct.eh_region* %141, null
  br i1 %142, label %143, label %165

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  store i32 1, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* @stderr, align 4
  %161 = load %struct.function*, %struct.function** %2, align 8
  %162 = call i32 @dump_eh_tree(i32 %160, %struct.function* %161)
  %163 = call i32 @internal_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %164

164:                                              ; preds = %159, %156
  br label %180

165:                                              ; preds = %135
  %166 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %167 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %166, i32 0, i32 2
  %168 = load %struct.eh_region*, %struct.eh_region** %167, align 8
  store %struct.eh_region* %168, %struct.eh_region** %4, align 8
  br label %169

169:                                              ; preds = %165
  %170 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %171 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %170, i32 0, i32 1
  %172 = load %struct.eh_region*, %struct.eh_region** %171, align 8
  %173 = icmp eq %struct.eh_region* %172, null
  br i1 %173, label %135, label %174

174:                                              ; preds = %169
  %175 = load %struct.eh_region*, %struct.eh_region** %3, align 8
  %176 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %175, i32 0, i32 1
  %177 = load %struct.eh_region*, %struct.eh_region** %176, align 8
  store %struct.eh_region* %177, %struct.eh_region** %3, align 8
  br label %178

178:                                              ; preds = %174, %130
  br label %179

179:                                              ; preds = %178, %118
  br label %56

180:                                              ; preds = %164, %17
  ret void
}

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @dump_eh_tree(i32, %struct.function*) #1

declare dso_local i32 @internal_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
