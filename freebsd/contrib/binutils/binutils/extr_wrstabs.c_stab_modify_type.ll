; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_modify_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_modify_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%ld=%c%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_write_handle*, i32, i32, i64**, i64*)* @stab_modify_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_modify_type(%struct.stab_write_handle* %0, i32 %1, i32 %2, i64** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stab_write_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64** %3, i64*** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %19 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %25 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i64**, i64*** %10, align 8
  %33 = icmp eq i64** %32, null
  br i1 %33, label %34, label %65

34:                                               ; preds = %31, %5
  %35 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %36 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  %40 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %41 = call i8* @stab_pop_type(%struct.stab_write_handle* %40)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %43, 2
  %45 = call i64 @xmalloc(i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %49, i8* %50)
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @stab_push_string(%struct.stab_write_handle* %54, i8* %55, i64 0, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %34
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %6, align 4
  br label %174

62:                                               ; preds = %34
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @free(i8* %63)
  br label %172

65:                                               ; preds = %31
  %66 = load i64, i64* %12, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %66, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %65
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i64 10, i64* %17, align 8
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* %17, align 8
  %83 = mul i64 %82, 2
  store i64 %83, i64* %17, align 8
  br label %77

84:                                               ; preds = %77
  %85 = load i64**, i64*** %10, align 8
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %17, align 8
  %88 = mul i64 %87, 8
  %89 = call i64 @xrealloc(i64* %86, i64 %88)
  %90 = inttoptr i64 %89 to i64*
  %91 = load i64**, i64*** %10, align 8
  store i64* %90, i64** %91, align 8
  %92 = load i64**, i64*** %10, align 8
  %93 = load i64*, i64** %92, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %17, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %97, %99
  %101 = mul i64 %100, 8
  %102 = call i32 @memset(i64* %96, i32 0, i64 %101)
  %103 = load i64, i64* %17, align 8
  %104 = load i64*, i64** %11, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %84, %65
  %106 = load i64**, i64*** %10, align 8
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %105
  %114 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %115 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %113
  %121 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %122 = call i8* @stab_pop_type(%struct.stab_write_handle* %121)
  %123 = call i32 @free(i8* %122)
  %124 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @stab_push_defined_type(%struct.stab_write_handle* %124, i64 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %6, align 4
  br label %174

131:                                              ; preds = %120
  br label %171

132:                                              ; preds = %113, %105
  %133 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %134 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %13, align 8
  %136 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %137 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %141 = call i8* @stab_pop_type(%struct.stab_write_handle* %140)
  store i8* %141, i8** %14, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = call i64 @strlen(i8* %142)
  %144 = add nsw i64 %143, 20
  %145 = call i64 @xmalloc(i64 %144)
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %148, i32 %149, i8* %150)
  %152 = load i8*, i8** %14, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i64, i64* %13, align 8
  %155 = load i64**, i64*** %10, align 8
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %154, i64* %158, align 8
  %159 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @stab_push_string(%struct.stab_write_handle* %159, i8* %160, i64 %161, i32 %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %132
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %6, align 4
  br label %174

168:                                              ; preds = %132
  %169 = load i8*, i8** %15, align 8
  %170 = call i32 @free(i8* %169)
  br label %171

171:                                              ; preds = %168, %131
  br label %172

172:                                              ; preds = %171, %62
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %172, %166, %129, %60
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i32, i32) #1

declare dso_local i64 @xrealloc(i64*, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @stab_push_defined_type(%struct.stab_write_handle*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
