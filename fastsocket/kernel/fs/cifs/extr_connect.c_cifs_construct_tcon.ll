; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_construct_tcon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_construct_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_ses = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.smb_vol = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_USERNAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"krb50x%x\00", align 1
@CIFSSEC_MUST_KRB5 = common dso_local global i32 0, align 4
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_tcon* (%struct.cifs_sb_info*, i32)* @cifs_construct_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_tcon* @cifs_construct_tcon(%struct.cifs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cifs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.cifs_ses*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.smb_vol*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %12 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %11)
  store %struct.cifs_tcon* %12, %struct.cifs_tcon** %5, align 8
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %7, align 8
  %13 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.smb_vol* @kzalloc(i32 48, i32 %18)
  store %struct.smb_vol* %19, %struct.smb_vol** %8, align 8
  %20 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %21 = icmp eq %struct.smb_vol* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.cifs_tcon* @ERR_PTR(i32 %24)
  store %struct.cifs_tcon* %25, %struct.cifs_tcon** %7, align 8
  br label %129

26:                                               ; preds = %2
  %27 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @snprintf(i8* %17, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %31 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %30, i32 0, i32 0
  store i8* %17, i8** %31, align 8
  %32 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %36 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %39 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %42 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %47 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %52 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %54 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %57 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %62 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %64 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %70 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @CIFSSEC_MUST_KRB5, align 4
  %72 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %73 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %76 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %90 = call %struct.cifs_tcon* @cifs_get_smb_ses(%struct.TYPE_5__* %88, %struct.smb_vol* %89)
  %91 = bitcast %struct.cifs_tcon* %90 to %struct.cifs_ses*
  store %struct.cifs_ses* %91, %struct.cifs_ses** %6, align 8
  %92 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %93 = bitcast %struct.cifs_ses* %92 to %struct.cifs_tcon*
  %94 = call i64 @IS_ERR(%struct.cifs_tcon* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %26
  %97 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %98 = bitcast %struct.cifs_ses* %97 to %struct.cifs_tcon*
  store %struct.cifs_tcon* %98, %struct.cifs_tcon** %7, align 8
  %99 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %100 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i32 @cifs_put_tcp_session(%struct.TYPE_5__* %103)
  br label %129

105:                                              ; preds = %26
  %106 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %107 = bitcast %struct.cifs_ses* %106 to %struct.cifs_tcon*
  %108 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %109 = call %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon* %107, %struct.smb_vol* %108)
  store %struct.cifs_tcon* %109, %struct.cifs_tcon** %7, align 8
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %111 = call i64 @IS_ERR(%struct.cifs_tcon* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %115 = bitcast %struct.cifs_ses* %114 to %struct.cifs_tcon*
  %116 = call i32 @cifs_put_smb_ses(%struct.cifs_tcon* %115)
  br label %129

117:                                              ; preds = %105
  %118 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %119 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CAP_UNIX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %126 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %127 = call i32 @reset_cifs_unix_caps(i32 0, %struct.cifs_tcon* %125, i32* null, %struct.smb_vol* %126)
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %113, %96, %22
  %130 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %131 = call i32 @kfree(%struct.smb_vol* %130)
  %132 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  ret %struct.cifs_tcon* %132
}

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.smb_vol* @kzalloc(i32, i32) #1

declare dso_local %struct.cifs_tcon* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_smb_ses(%struct.TYPE_5__*, %struct.smb_vol*) #1

declare dso_local i64 @IS_ERR(%struct.cifs_tcon*) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.TYPE_5__*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_tcon*) #1

declare dso_local i32 @reset_cifs_unix_caps(i32, %struct.cifs_tcon*, i32*, %struct.smb_vol*) #1

declare dso_local i32 @kfree(%struct.smb_vol*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
