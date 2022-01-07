; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_plt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_plt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32, i32 }

@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"reading password map\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@root_home = common dso_local global i8* null, align 8
@pwtab = common dso_local global i64 0, align 8
@cur_pwtab_num = common dso_local global i32 0, align 4
@plt_compare_fxn = common dso_local global i32 0, align 4
@untab = common dso_local global i64 0, align 8
@unt_compare_fxn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"password map read and sorted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plt_init() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = alloca i32, align 4
  %3 = call i64 (...) @plt_reset()
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %84

6:                                                ; preds = %0
  %7 = load i32, i32* @XLOG_INFO, align 4
  %8 = call i32 @plog(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @hlfsd_setpwent()
  br label %10

10:                                               ; preds = %64, %6
  %11 = call %struct.passwd* (...) @hlfsd_getpwent()
  store %struct.passwd* %11, %struct.passwd** %1, align 8
  %12 = icmp ne %struct.passwd* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  %14 = load %struct.passwd*, %struct.passwd** %1, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.passwd*, %struct.passwd** %1, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.passwd*, %struct.passwd** %1, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @table_add(i32 %16, i8* %19, i32 %22)
  %24 = load %struct.passwd*, %struct.passwd** %1, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @STREQ(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %13
  %30 = load i8*, i8** @root_home, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** @root_home, align 8
  %34 = call i32 @XFREE(i8* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.passwd*, %struct.passwd** %1, align 8
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** @root_home, align 8
  %40 = load i8*, i8** @root_home, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %56, %35
  %43 = load i32, i32* %2, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** @root_home, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br label %54

54:                                               ; preds = %45, %42
  %55 = phi i1 [ false, %42 ], [ %53, %45 ]
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %2, align 4
  %59 = load i8*, i8** @root_home, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %42

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %13
  br label %10

65:                                               ; preds = %10
  %66 = call i32 (...) @hlfsd_endpwent()
  %67 = load i64, i64* @pwtab, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load i32, i32* @cur_pwtab_num, align 4
  %70 = load i32, i32* @plt_compare_fxn, align 4
  %71 = call i32 @qsort(i8* %68, i32 %69, i32 4, i32 %70)
  %72 = load i64, i64* @untab, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32, i32* @cur_pwtab_num, align 4
  %75 = load i32, i32* @unt_compare_fxn, align 4
  %76 = call i32 @qsort(i8* %73, i32 %74, i32 4, i32 %75)
  %77 = load i8*, i8** @root_home, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %65
  %80 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %80, i8** @root_home, align 8
  br label %81

81:                                               ; preds = %79, %65
  %82 = load i32, i32* @XLOG_INFO, align 4
  %83 = call i32 @plog(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %5
  ret void
}

declare dso_local i64 @plt_reset(...) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @hlfsd_setpwent(...) #1

declare dso_local %struct.passwd* @hlfsd_getpwent(...) #1

declare dso_local i32 @table_add(i32, i8*, i32) #1

declare dso_local i64 @STREQ(i8*, i32) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hlfsd_endpwent(...) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
