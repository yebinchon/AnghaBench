; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSQueryMFSymLink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_link.c_CIFSQueryMFSymLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.nls_table = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CIFS_MF_SYMLINK_FILE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, i8*, i8**, %struct.nls_table*, i32)* @CIFSQueryMFSymLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CIFSQueryMFSymLink(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8** %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.cifs_io_parms, align 8
  %23 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.nls_table* %4, %struct.nls_table** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %24, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @FILE_OPEN, align 4
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = load i32, i32* @CREATE_NOT_DIR, align 4
  %31 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @CIFSSMBOpen(i32 %25, %struct.cifs_tcon* %26, i8* %27, i32 %28, i32 %29, i32 %30, i32* %16, i32* %15, %struct.TYPE_4__* %23, %struct.nls_table* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %97

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %42 = call i64 @cpu_to_le64(i32 %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @CIFSSMBClose(i32 %45, %struct.cifs_tcon* %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %97

51:                                               ; preds = %38
  %52 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %97

60:                                               ; preds = %51
  %61 = load i8*, i8** %17, align 8
  store i8* %61, i8** %18, align 8
  %62 = load i32, i32* %16, align 4
  %63 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %22, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %22, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %69 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %22, i32 0, i32 2
  store %struct.cifs_tcon* %68, %struct.cifs_tcon** %69, align 8
  %70 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %22, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @CIFS_MF_SYMLINK_FILE_SIZE, align 4
  %72 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %22, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @CIFSSMBRead(i32 %73, %struct.cifs_io_parms* %22, i32* %19, i8** %18, i32* %20)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @CIFSSMBClose(i32 %75, %struct.cifs_tcon* %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %60
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %7, align 4
  br label %97

85:                                               ; preds = %60
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i8**, i8*** %11, align 8
  %89 = call i32 @CIFSParseMFSymlink(i8* %86, i32 %87, i32* %21, i8** %88)
  store i32 %89, i32* %14, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %7, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %94, %81, %57, %44, %36
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, %struct.nls_table*, i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @CIFSSMBRead(i32, %struct.cifs_io_parms*, i32*, i8**, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @CIFSParseMFSymlink(i8*, i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
