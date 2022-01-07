; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_file_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_file_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i64, i64 }

@ld_sysroot = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@search_head = common dso_local global %struct.TYPE_9__* null, align 8
@link_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@slash = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldfile_open_file_search(i8* %0, %struct.TYPE_10__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %82, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ABSOLUTE_PATH(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load i32, i32* @ld_sysroot, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @concat(i32 %29, i8* %32, i8* null)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = call i64 @ldfile_try_open_bfd(i8* %34, %struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %5, align 4
  br label %184

43:                                               ; preds = %28
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @free(i8* %44)
  br label %73

46:                                               ; preds = %22, %17
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = call i64 @ldfile_try_open_bfd(i8* %49, %struct.TYPE_10__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ABSOLUTE_PATH(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i64 @is_sysrooted_pathname(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %53
  %67 = phi i1 [ false, %53 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %5, align 4
  br label %184

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ABSOLUTE_PATH(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %184

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @search_head, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %10, align 8
  br label %84

84:                                               ; preds = %178, %82
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %87, label %182

87:                                               ; preds = %84
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @link_info, i32 0, i32 0), align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = call i64 @ldemul_open_dynamic_archive(i8* %96, %struct.TYPE_9__* %97, %struct.TYPE_10__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %5, align 4
  br label %184

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %92, %87
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = load i8*, i8** @slash, align 8
  %115 = call i64 @strlen(i8* %114)
  %116 = add nsw i64 %113, %115
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = add nsw i64 %116, %118
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strlen(i8* %122)
  %124 = add nsw i64 %119, %123
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @strlen(i8* %125)
  %127 = add nsw i64 %124, %126
  %128 = load i8*, i8** %9, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = add nsw i64 %127, %129
  %131 = add nsw i64 %130, 1
  %132 = call i8* @xmalloc(i64 %131)
  store i8* %132, i8** %12, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %109
  %138 = load i8*, i8** %12, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** @slash, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %141, i8* %142, i8* %143, i8* %146, i8* %147, i8* %148)
  br label %160

150:                                              ; preds = %109
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @slash, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %154, i8* %155, i8* %158)
  br label %160

160:                                              ; preds = %150, %137
  %161 = load i8*, i8** %12, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %163 = call i64 @ldfile_try_open_bfd(i8* %161, %struct.TYPE_10__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load i8*, i8** %12, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %5, align 4
  br label %184

175:                                              ; preds = %160
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @free(i8* %176)
  br label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %10, align 8
  br label %84

182:                                              ; preds = %84
  %183 = load i32, i32* @FALSE, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %165, %101, %79, %66, %38
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @concat(i32, i8*, i8*) #1

declare dso_local i64 @ldfile_try_open_bfd(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @is_sysrooted_pathname(i8*, i32) #1

declare dso_local i64 @ldemul_open_dynamic_archive(i8*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
