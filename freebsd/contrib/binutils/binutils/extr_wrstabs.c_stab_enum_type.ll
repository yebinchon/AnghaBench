; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"xe%s:\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s:T%ld=e\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s:%ld,\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@N_LSYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i64*)* @stab_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_enum_type(i8* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.stab_write_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %17, %struct.stab_write_handle** %10, align 8
  store i64 0, i64* %14, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 10, %26
  %28 = sext i32 %27 to i64
  %29 = call i64 @xmalloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @stab_push_string(%struct.stab_write_handle* %34, i8* %35, i32 0, i32 %36, i32 4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %20
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %5, align 4
  br label %147

41:                                               ; preds = %20
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %147

45:                                               ; preds = %4
  store i64 10, i64* %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i8**, i8*** %8, align 8
  store i8** %55, i8*** %12, align 8
  br label %56

56:                                               ; preds = %68, %54
  %57 = load i8**, i8*** %12, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i8**, i8*** %12, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %63, 20
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i8**, i8*** %12, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %12, align 8
  br label %56

71:                                               ; preds = %56
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @xmalloc(i64 %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %92

80:                                               ; preds = %71
  %81 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %82 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %14, align 8
  %84 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %85 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %89, i64 %90)
  br label %92

92:                                               ; preds = %80, %77
  %93 = load i8**, i8*** %8, align 8
  store i8** %93, i8*** %12, align 8
  %94 = load i64*, i64** %9, align 8
  store i64* %94, i64** %15, align 8
  br label %95

95:                                               ; preds = %110, %92
  %96 = load i8**, i8*** %12, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8**, i8*** %12, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i64*, i64** %15, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %106, i64 %108)
  br label %110

110:                                              ; preds = %99
  %111 = load i8**, i8*** %12, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %12, align 8
  %113 = load i64*, i64** %15, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %15, align 8
  br label %95

115:                                              ; preds = %95
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @strcat(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i8*, i8** %7, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @stab_push_string(%struct.stab_write_handle* %121, i8* %122, i32 0, i32 %123, i32 4)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %5, align 4
  br label %147

128:                                              ; preds = %120
  br label %143

129:                                              ; preds = %115
  %130 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %131 = load i32, i32* @N_LSYM, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 @stab_write_symbol(%struct.stab_write_handle* %130, i32 %131, i32 0, i32 0, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.stab_write_handle*, %struct.stab_write_handle** %10, align 8
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @stab_push_defined_type(%struct.stab_write_handle* %136, i64 %137, i32 4)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135, %129
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %5, align 4
  br label %147

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %128
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %140, %126, %41, %39
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @stab_push_string(%struct.stab_write_handle*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i32, i8*) #1

declare dso_local i32 @stab_push_defined_type(%struct.stab_write_handle*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
