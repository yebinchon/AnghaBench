; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_create_register_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_create_register_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" .req \00", align 1
@arm_reg_hsh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unknown register '%s' -- .req ignored\00", align 1
@original_case_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_register_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_register_alias(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reg_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 6
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %113

23:                                               ; preds = %15
  %24 = load i32, i32* @arm_reg_hsh, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.reg_entry* @hash_find(i32 %24, i8* %25)
  store %struct.reg_entry* %26, %struct.reg_entry** %6, align 8
  %27 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %28 = icmp ne %struct.reg_entry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @as_warn(i32 %30, i8* %31)
  store i32 1, i32* %3, align 4
  br label %113

33:                                               ; preds = %23
  %34 = load i8*, i8** @original_case_string, align 8
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  %39 = call i8* @alloca(i64 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %49 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %52 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @insert_reg_alias(i8* %47, i32 %50, i32 %53)
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %65, %33
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call signext i8 @TOUPPER(i8 signext %62)
  %64 = load i8*, i8** %5, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  br label %56

68:                                               ; preds = %56
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @strncmp(i8* %69, i8* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %77 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %80 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @insert_reg_alias(i8* %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %74, %68
  %84 = load i8*, i8** %8, align 8
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %94, %83
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call signext i8 @TOLOWER(i8 signext %91)
  %93 = load i8*, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  br label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %85

97:                                               ; preds = %85
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i64 @strncmp(i8* %98, i8* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %106 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %109 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @insert_reg_alias(i8* %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %103, %97
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %29, %22, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local %struct.reg_entry* @hash_find(i32, i8*) #1

declare dso_local i32 @as_warn(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @insert_reg_alias(i8*, i32, i32) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
