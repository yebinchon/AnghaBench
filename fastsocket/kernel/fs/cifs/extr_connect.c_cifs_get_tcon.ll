; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_tcon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i64, i32, i32, i32, i32, i32, i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.smb_vol = type { i64, i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Found match on UNC path\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"transport encryption setting conflicts with existing tid\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing share name\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"CIFS Tcon rc = %d\00", align 1
@SMB_SHARE_IS_IN_DFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"DFS disabled (%d)\00", align 1
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_tcon* (%struct.cifs_ses*, %struct.smb_vol*)* @cifs_get_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_ses* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca %struct.cifs_tcon*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %9 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %10 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %11 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cifs_tcon* @cifs_find_tcon(%struct.cifs_ses* %9, i32 %12)
  store %struct.cifs_tcon* %13, %struct.cifs_tcon** %8, align 8
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %15 = icmp ne %struct.cifs_tcon* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %19 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %18)
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %21 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %24 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %16
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  store %struct.cifs_tcon* %30, %struct.cifs_tcon** %3, align 8
  br label %151

31:                                               ; preds = %2
  %32 = call %struct.cifs_tcon* (...) @tconInfoAlloc()
  store %struct.cifs_tcon* %32, %struct.cifs_tcon** %8, align 8
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %34 = icmp eq %struct.cifs_tcon* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %146

38:                                               ; preds = %31
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %41 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %40, i32 0, i32 7
  store %struct.cifs_ses* %39, %struct.cifs_ses** %41, align 8
  %42 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %43 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %48 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @kstrdup(i64 %49, i32 %50)
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %53 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %55 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %146

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %64 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 3
  %67 = call i32* @strchr(i32 %66, i8 signext 92)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %71 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 3
  %74 = call i32* @strchr(i32 %73, i8 signext 47)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %146

80:                                               ; preds = %69, %62
  %81 = call i32 (...) @GetXid()
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %84 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %85 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %88 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %89 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @CIFSTCon(i32 %82, %struct.cifs_ses* %83, i32 %86, %struct.cifs_tcon* %87, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @FreeXid(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %146

99:                                               ; preds = %80
  %100 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %101 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i32, i32* @SMB_SHARE_IS_IN_DFS, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %108 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %112 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %104, %99
  %116 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %117 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %120 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %122 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %125 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %127 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %130 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %132 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %135 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %137 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %138 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %137, i32 0, i32 2
  %139 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %140 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %139, i32 0, i32 0
  %141 = call i32 @list_add(i32* %138, i32* %140)
  %142 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %143 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %144 = call i32 @cifs_fscache_get_super_cookie(%struct.cifs_tcon* %143)
  %145 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  store %struct.cifs_tcon* %145, %struct.cifs_tcon** %3, align 8
  br label %151

146:                                              ; preds = %98, %76, %58, %35
  %147 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %148 = call i32 @tconInfoFree(%struct.cifs_tcon* %147)
  %149 = load i32, i32* %6, align 4
  %150 = call %struct.cifs_tcon* @ERR_PTR(i32 %149)
  store %struct.cifs_tcon* %150, %struct.cifs_tcon** %3, align 8
  br label %151

151:                                              ; preds = %146, %115, %29
  %152 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  ret %struct.cifs_tcon* %152
}

declare dso_local %struct.cifs_tcon* @cifs_find_tcon(%struct.cifs_ses*, i32) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_ses*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local %struct.cifs_tcon* @tconInfoAlloc(...) #1

declare dso_local i32 @kstrdup(i64, i32) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @CIFSTCon(i32, %struct.cifs_ses*, i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_fscache_get_super_cookie(%struct.cifs_tcon*) #1

declare dso_local i32 @tconInfoFree(%struct.cifs_tcon*) #1

declare dso_local %struct.cifs_tcon* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
