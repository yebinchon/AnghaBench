; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_volume_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32*, i32*, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"null user\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Username: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No username specified\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CIFS mount error: iocharset %s not found\00", align 1
@ELIBACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vol*, i8*, i8*)* @cifs_setup_volume_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_setup_volume_info(%struct.smb_vol* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.smb_vol* %0, %struct.smb_vol** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %12 = call i64 @cifs_parse_mount_options(i8* %9, i8* %10, %struct.smb_vol* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %81

17:                                               ; preds = %3
  %18 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %19 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 1, i32 %24)
  %26 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %27 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %29 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %81

35:                                               ; preds = %22
  br label %51

36:                                               ; preds = %17
  %37 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %38 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %43 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  br label %50

46:                                               ; preds = %36
  %47 = call i32 @cifserror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %81

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32* (...) @load_nls_default()
  %58 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %59 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  br label %79

60:                                               ; preds = %51
  %61 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %62 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* @load_nls(i32* %63)
  %65 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %66 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %68 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %73 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32* %74)
  %76 = load i32, i32* @ELIBACC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %81

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %71, %46, %32, %14
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @cifs_parse_mount_options(i8*, i8*, %struct.smb_vol*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cifserror(i8*) #1

declare dso_local i32* @load_nls_default(...) #1

declare dso_local i32* @load_nls(i32*) #1

declare dso_local i32 @cERROR(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
