; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strerror.c_init_error_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strerror.c_init_error_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_info = type { i8*, i32, i8* }

@num_error_names = common dso_local global i32 0, align 4
@error_table = common dso_local global %struct.error_info* null, align 8
@error_names = common dso_local global i8** null, align 8
@sys_errlist = common dso_local global i8** null, align 8
@sys_nerr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_error_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_error_tables() #0 {
  %1 = alloca %struct.error_info*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @num_error_names, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load %struct.error_info*, %struct.error_info** @error_table, align 8
  store %struct.error_info* %6, %struct.error_info** %1, align 8
  br label %7

7:                                                ; preds = %24, %5
  %8 = load %struct.error_info*, %struct.error_info** %1, align 8
  %9 = getelementptr inbounds %struct.error_info, %struct.error_info* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.error_info*, %struct.error_info** %1, align 8
  %14 = getelementptr inbounds %struct.error_info, %struct.error_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @num_error_names, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.error_info*, %struct.error_info** %1, align 8
  %20 = getelementptr inbounds %struct.error_info, %struct.error_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @num_error_names, align 4
  br label %23

23:                                               ; preds = %18, %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.error_info*, %struct.error_info** %1, align 8
  %26 = getelementptr inbounds %struct.error_info, %struct.error_info* %25, i32 1
  store %struct.error_info* %26, %struct.error_info** %1, align 8
  br label %7

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i8**, i8*** @error_names, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load i32, i32* @num_error_names, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8**
  store i8** %38, i8*** @error_names, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %31
  %41 = load i8**, i8*** @error_names, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @memset(i8** %41, i32 0, i32 %42)
  %44 = load %struct.error_info*, %struct.error_info** @error_table, align 8
  store %struct.error_info* %44, %struct.error_info** %1, align 8
  br label %45

45:                                               ; preds = %60, %40
  %46 = load %struct.error_info*, %struct.error_info** %1, align 8
  %47 = getelementptr inbounds %struct.error_info, %struct.error_info* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.error_info*, %struct.error_info** %1, align 8
  %52 = getelementptr inbounds %struct.error_info, %struct.error_info* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** @error_names, align 8
  %55 = load %struct.error_info*, %struct.error_info** %1, align 8
  %56 = getelementptr inbounds %struct.error_info, %struct.error_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %54, i64 %58
  store i8* %53, i8** %59, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load %struct.error_info*, %struct.error_info** %1, align 8
  %62 = getelementptr inbounds %struct.error_info, %struct.error_info* %61, i32 1
  store %struct.error_info* %62, %struct.error_info** %1, align 8
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i8**, i8*** @sys_errlist, align 8
  %67 = icmp eq i8** %66, null
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = load i32, i32* @num_error_names, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** @sys_errlist, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %68
  %78 = load i8**, i8*** @sys_errlist, align 8
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @memset(i8** %78, i32 0, i32 %79)
  %81 = load i32, i32* @num_error_names, align 4
  store i32 %81, i32* @sys_nerr, align 4
  %82 = load %struct.error_info*, %struct.error_info** @error_table, align 8
  store %struct.error_info* %82, %struct.error_info** %1, align 8
  br label %83

83:                                               ; preds = %98, %77
  %84 = load %struct.error_info*, %struct.error_info** %1, align 8
  %85 = getelementptr inbounds %struct.error_info, %struct.error_info* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.error_info*, %struct.error_info** %1, align 8
  %90 = getelementptr inbounds %struct.error_info, %struct.error_info* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** @sys_errlist, align 8
  %93 = load %struct.error_info*, %struct.error_info** %1, align 8
  %94 = getelementptr inbounds %struct.error_info, %struct.error_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %92, i64 %96
  store i8* %91, i8** %97, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load %struct.error_info*, %struct.error_info** %1, align 8
  %100 = getelementptr inbounds %struct.error_info, %struct.error_info* %99, i32 1
  store %struct.error_info* %100, %struct.error_info** %1, align 8
  br label %83

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %68
  br label %103

103:                                              ; preds = %102, %65
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
