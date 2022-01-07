; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_import_checkpointed_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_import_checkpointed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [76 x i8] c"Tried to read config of pool \22%s\22 but spa_get_stats() failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@BOGUS_SUFFIX = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZFS_IMPORT_MISSING_LOG = common dso_local global i32 0, align 4
@ZFS_IMPORT_CHECKPOINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Tried to import pool \22%s\22 but spa_import() failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i8**)* @import_checkpointed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @import_checkpointed_state(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i8* @strndup(i8* %22, i64 %23)
  store i8* %24, i8** %8, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @spa_get_stats(i8* %31, i32** %5, i32* null, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fatal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** @BOGUS_SUFFIX, align 8
  %43 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @fnvlist_add_string(i32* %44, i32 %45, i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @ZFS_IMPORT_MISSING_LOG, align 4
  %51 = load i32, i32* @ZFS_IMPORT_CHECKPOINT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @spa_import(i8* %48, i32* %49, i32* null, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @fatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %40
  %61 = load i8**, i8*** %6, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @asprintf(i8** %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %66, %63, %60
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i8*, i8** %9, align 8
  ret i8* %79
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @spa_get_stats(i8*, i32**, i32*, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
