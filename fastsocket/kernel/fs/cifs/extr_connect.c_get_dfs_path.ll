; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_get_dfs_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_get_dfs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i8*, i32 }
%struct.nls_table = type { i32 }
%struct.dfs_info3_param = type { i32 }

@SERVER_NAME_LEN_WITH_NULL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\\IPC$\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CIFS Tcon rc = %d ipc_tid = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dfs_path(i32 %0, %struct.cifs_ses* %1, i8* %2, %struct.nls_table* %3, i32* %4, %struct.dfs_info3_param** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_ses*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dfs_info3_param**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.nls_table* %3, %struct.nls_table** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.dfs_info3_param** %5, %struct.dfs_info3_param*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %14, align 8
  store %struct.dfs_info3_param* null, %struct.dfs_info3_param** %19, align 8
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %21 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %7
  %25 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %26 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @SERVER_NAME_LEN_WITH_NULL, align 4
  %29 = mul nsw i32 %28, 2
  %30 = call i64 @strnlen(i8* %27, i32 %29)
  %31 = add nsw i64 2, %30
  %32 = add nsw i64 %31, 1
  %33 = add nsw i64 %32, 4
  %34 = add nsw i64 %33, 2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i64 %34, i32 %35)
  store i8* %36, i8** %16, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %88

42:                                               ; preds = %24
  %43 = load i8*, i8** %16, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 92, i8* %44, align 1
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 92, i8* %46, align 1
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcpy(i8* %48, i8* %51)
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %56 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %66 = call i32 @CIFSTCon(i32 %62, %struct.cifs_ses* %63, i8* %64, i32* null, %struct.nls_table* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i8*, i8** %16, align 8
  %73 = call i32 @kfree(i8* %72)
  br label %74

74:                                               ; preds = %42, %7
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %14, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @CIFSGetDFSRefer(i32 %78, %struct.cifs_ses* %79, i8* %80, %struct.dfs_info3_param** %81, i32* %82, %struct.nls_table* %83, i32 %84)
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %39
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CIFSTCon(i32, %struct.cifs_ses*, i8*, i32*, %struct.nls_table*) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @CIFSGetDFSRefer(i32, %struct.cifs_ses*, i8*, %struct.dfs_info3_param**, i32*, %struct.nls_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
