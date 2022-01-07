; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DT_IDENT_ARRAY = common dso_local global i64 0, align 8
@DT_IDENT_AGG = common dso_local global i64 0, align 8
@D_PROTO_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s%s%s prototype mismatch: %d %s%spassed, %s%d expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"s \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"at least \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_PROTO_ARG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [71 x i8] c"%s%s%s %s #%d is incompatible with prototype:\0A\09prototype: %s\0A\09%9s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*, i32, %struct.TYPE_11__*, i8*, i8*)* @dt_idcook_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_idcook_sign(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i32 %2, %struct.TYPE_11__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %13, align 8
  %25 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %6
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT_IDENT_AGG, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %6
  %44 = phi i1 [ true, %6 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  br label %92

60:                                               ; preds = %43
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ true, %65 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %17, align 4
  br label %91

81:                                               ; preds = %60
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %16, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %81, %77
  br label %92

92:                                               ; preds = %91, %50
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %92
  %96 = load i32, i32* @D_PROTO_LEN, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 1
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %95
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  br label %127

125:                                              ; preds = %95
  %126 = load i32, i32* %17, align 4
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi i32 [ %124, %121 ], [ %126, %125 ]
  %129 = call i32 (i32, i8*, i8*, i32, i8*, ...) @xyerror(i32 %96, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %97, i32 %100, i8* %101, i32 %102, i8* %106, i8* %110, i8* %116, i32 %128)
  br label %130

130:                                              ; preds = %127, %92
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %188, %130
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %194

135:                                              ; preds = %131
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %135
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %150
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = call i32 @dt_node_is_argcompat(%struct.TYPE_11__* %151, %struct.TYPE_11__* %152)
  store i32 %153, i32* %15, align 4
  br label %155

154:                                              ; preds = %135
  store i32 1, i32* %15, align 4
  br label %155

155:                                              ; preds = %154, %145
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %187, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @D_PROTO_ARG, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = trunc i64 %26 to i32
  %178 = call i32 @dt_node_type_name(%struct.TYPE_11__* %176, i8* %28, i32 %177)
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = trunc i64 %30 to i32
  %185 = call i32 @dt_node_type_name(%struct.TYPE_11__* %183, i8* %31, i32 %184)
  %186 = call i32 (i32, i8*, i8*, i32, i8*, ...) @xyerror(i32 %159, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* %160, i32 %163, i8* %164, i8* %168, i32 %170, i32 %178, i8* %182, i32 %185)
  br label %187

187:                                              ; preds = %158, %155
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  store %struct.TYPE_11__* %193, %struct.TYPE_11__** %10, align 8
  br label %131

194:                                              ; preds = %131
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @B_FALSE, align 4
  %203 = call i32 @dt_node_type_assign(%struct.TYPE_11__* %195, i32 %198, i32 %201, i32 %202)
  %204 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %204)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xyerror(i32, i8*, i8*, i32, i8*, ...) #2

declare dso_local i32 @dt_node_is_argcompat(%struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_11__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
