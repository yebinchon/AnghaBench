; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_parse_simple_hostname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_parse_simple_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NFS: MNTPATH: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"NFS: device name not in host:path format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"NFS: not enough memory to parse device name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"NFS: server hostname too long\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"NFS: export pathname too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64, i8**, i64)* @nfs_parse_simple_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_parse_simple_hostname(i8* %0, i8** %1, i64 %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %78

20:                                               ; preds = %5
  %21 = load i8*, i8** %13, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %88

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kstrndup(i8* %31, i64 %32, i32 %33)
  %35 = load i8**, i8*** %8, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %83

40:                                               ; preds = %30
  %41 = load i8**, i8*** %8, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 44)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %14, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %78

52:                                               ; preds = %46
  %53 = load i8*, i8** %14, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %93

63:                                               ; preds = %54
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kstrndup(i8* %64, i64 %65, i32 %66)
  %68 = load i8**, i8*** %10, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %83

73:                                               ; preds = %63
  %74 = load i32, i32* @MOUNT, align 4
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, ...) @dfprintk(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %76)
  store i32 0, i32* %6, align 4
  br label %98

78:                                               ; preds = %51, %19
  %79 = load i32, i32* @MOUNT, align 4
  %80 = call i32 (i32, i8*, ...) @dfprintk(i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %98

83:                                               ; preds = %72, %39
  %84 = load i32, i32* @MOUNT, align 4
  %85 = call i32 (i32, i8*, ...) @dfprintk(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %29
  %89 = load i32, i32* @MOUNT, align 4
  %90 = call i32 (i32, i8*, ...) @dfprintk(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @ENAMETOOLONG, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %98

93:                                               ; preds = %62
  %94 = load i32, i32* @MOUNT, align 4
  %95 = call i32 (i32, i8*, ...) @dfprintk(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENAMETOOLONG, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %88, %83, %78, %73
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dfprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
