; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_method_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_method_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32, i64, i32 }

@CXXFLAGS_STATIC = common dso_local global i32 0, align 4
@CXXFLAGS_CONST = common dso_local global i32 0, align 4
@CXXFLAGS_VOLATILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i8*, i32, i32, i32, i32, i32, i32)* @ieee_class_method_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_class_method_var(%struct.ieee_handle* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %22 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %21)
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %27 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %26)
  br label %28

28:                                               ; preds = %25, %8
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %30 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br label %51

51:                                               ; preds = %41, %33, %28
  %52 = phi i1 [ false, %33 ], [ false, %28 ], [ %50, %41 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @ieee_vis_to_flags(i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @CXXFLAGS_STATIC, align 4
  %61 = load i32, i32* %18, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %18, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @CXXFLAGS_CONST, align 4
  %68 = load i32, i32* %18, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %18, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @CXXFLAGS_VOLATILE, align 4
  %75 = load i32, i32* %18, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %79 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %16, align 4
  %90 = icmp ugt i32 %89, 0
  br label %91

91:                                               ; preds = %88, %77
  %92 = phi i1 [ true, %77 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %20, align 4
  %94 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %95 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %96 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = call i32 @ieee_change_buffer(%struct.ieee_handle* %94, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %91
  %105 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 118, i32 109
  %111 = call i32 @ieee_write_asn(%struct.ieee_handle* %105, i32 %106, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %104
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @ieee_write_asn(%struct.ieee_handle* %114, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %123 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @ieee_write_atn65(%struct.ieee_handle* %120, i32 %121, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %119
  %133 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @ieee_write_atn65(%struct.ieee_handle* %133, i32 %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132, %119, %113, %104, %91
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %9, align 4
  br label %199

140:                                              ; preds = %132
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %181

143:                                              ; preds = %140
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %146 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ugt i32 %144, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %143
  %155 = load i32, i32* %16, align 4
  %156 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %157 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i32 %155, i32* %162, align 4
  br label %163

163:                                              ; preds = %154, %143
  %164 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @ieee_write_asn(%struct.ieee_handle* %164, i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %9, align 4
  br label %199

171:                                              ; preds = %163
  %172 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %173 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %171, %140
  %182 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %183 = load i32, i32* %19, align 4
  %184 = call i32 @ieee_write_asn(%struct.ieee_handle* %182, i32 %183, i32 0)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %9, align 4
  br label %199

188:                                              ; preds = %181
  %189 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %190 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 5
  store i64 %197, i64* %195, align 8
  %198 = load i32, i32* @TRUE, align 4
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %188, %186, %169, %138
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i32 @ieee_pop_unused_type(%struct.ieee_handle*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_vis_to_flags(i32) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
