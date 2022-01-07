; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_demangled_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_demangled_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@name_buffer = common dso_local global i8* null, align 8
@name_buffer_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"___\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.type*)* @demangled_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demangled_type_name(%struct.type* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call i8* @ada_type_name(%struct.type* %7)
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %119

11:                                               ; preds = %1
  %12 = load %struct.type*, %struct.type** %3, align 8
  %13 = call i8* @ada_type_name(%struct.type* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** @name_buffer, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @name_buffer_len, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16, %11
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 16, %24
  store i32 %25, i32* @name_buffer_len, align 4
  %26 = load i8*, i8** @name_buffer, align 8
  %27 = load i32, i32* @name_buffer_len, align 4
  %28 = call i8* @xrealloc(i8* %26, i32 %27)
  store i8* %28, i8** @name_buffer, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = load i8*, i8** @name_buffer, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = load i8*, i8** @name_buffer, align 8
  %34 = call i64 @strstr(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i8*, i8** %5, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i8*, i8** @name_buffer, align 8
  %42 = load i8*, i8** @name_buffer, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %67, %40
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** @name_buffer, align 8
  %50 = icmp ugt i8* %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 95
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 95
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i1 [ true, %51 ], [ %62, %57 ]
  br label %65

65:                                               ; preds = %63, %47
  %66 = phi i1 [ false, %47 ], [ %64, %63 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -1
  store i8* %69, i8** %5, align 8
  br label %47

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** @name_buffer, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** @name_buffer, align 8
  store i8* %75, i8** %2, align 8
  br label %119

76:                                               ; preds = %70
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @islower(i8 signext %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i8* null, i8** %2, align 8
  br label %119

83:                                               ; preds = %76
  %84 = load i8*, i8** @name_buffer, align 8
  store i8* %84, i8** %6, align 8
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %113, %83
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 95
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 95
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i8*, i8** %6, align 8
  store i8 46, i8* %103, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %5, align 8
  br label %112

106:                                              ; preds = %96, %90
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %6, align 8
  store i8 %108, i8* %109, align 1
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %5, align 8
  br label %112

112:                                              ; preds = %106, %102
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %6, align 8
  br label %85

116:                                              ; preds = %85
  %117 = load i8*, i8** %6, align 8
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** @name_buffer, align 8
  store i8* %118, i8** %2, align 8
  br label %119

119:                                              ; preds = %116, %82, %74, %10
  %120 = load i8*, i8** %2, align 8
  ret i8* %120
}

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @islower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
