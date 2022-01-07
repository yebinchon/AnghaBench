; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_merge_object_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_merge_object_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }

@OBJ_ATTR_FIRST = common dso_local global i32 0, align 4
@OBJ_ATTR_LAST = common dso_local global i32 0, align 4
@Tag_compatibility = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ERROR: %B: Must be processed by '%s' toolchain\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"ERROR: %B: Incompatible object tag '%s':%d\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_merge_object_attributes(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @OBJ_ATTR_FIRST, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %197, %2
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @OBJ_ATTR_LAST, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %200

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_4__** @elf_other_obj_attributes(i32* %17)
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_4__** @elf_other_obj_attributes(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  br label %29

29:                                               ; preds = %195, %86, %47, %16
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @Tag_compatibility, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %196

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %29

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i32*, i8*, ...) @_bfd_error_handler(i32 %60, i32* %61, i8* %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %202

67:                                               ; preds = %53, %48
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @Tag_compatibility, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %79, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %76, %70, %67
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @bfd_elf_add_proc_attr_compat(i32* %87, i32 %90, i8* %93)
  br label %29

95:                                               ; preds = %76
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %7, align 8
  br label %98

98:                                               ; preds = %163, %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @Tag_compatibility, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %121, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %115, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %112, %104, %98
  %122 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i32*, i8*, ...) @_bfd_error_handler(i32 %122, i32* %123, i8* %126, i32 %129)
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %3, align 4
  br label %202

132:                                              ; preds = %112
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %8, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @Tag_compatibility, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %132
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strcmp(i8* %144, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141, %132
  br label %164

152:                                              ; preds = %141
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %6, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %9, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %159 = icmp ne %struct.TYPE_4__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  store %struct.TYPE_5__* %162, %struct.TYPE_5__** %7, align 8
  br label %163

163:                                              ; preds = %160, %152
  br label %98

164:                                              ; preds = %151
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %195

167:                                              ; preds = %164
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @Tag_compatibility, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %167
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcmp(i8* %176, i8* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %173
  %184 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i32*, i32** %4, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (i32, i32*, i8*, ...) @_bfd_error_handler(i32 %184, i32* %185, i8* %188, i32 %192)
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %3, align 4
  br label %202

195:                                              ; preds = %173, %167, %164
  br label %29

196:                                              ; preds = %38
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %12

200:                                              ; preds = %12
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %200, %183, %121, %59
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.TYPE_4__** @elf_other_obj_attributes(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_elf_add_proc_attr_compat(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
