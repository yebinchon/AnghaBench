; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_reconnect_tcon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_reconnect_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i64, i32, i32, i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32, i32, i64, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64, i32 }
%struct.nls_table = type { i32 }

@CifsExiting = common dso_local global i64 0, align 8
@SMB_COM_OPEN_ANDX = common dso_local global i32 0, align 4
@SMB_COM_TREE_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can not send cmd %d while umounting\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"gave up waiting on reconnect in smb_init\00", align 1
@EHOSTDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"reconnect tcon rc = %d\00", align 1
@tconInfoReconnectCount = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_tcon*, i32)* @cifs_reconnect_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_reconnect_tcon(%struct.cifs_tcon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.TCP_Server_Info*, align 8
  %9 = alloca %struct.nls_table*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %11 = icmp ne %struct.cifs_tcon* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

13:                                               ; preds = %2
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 4
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  store %struct.cifs_ses* %16, %struct.cifs_ses** %7, align 8
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 3
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  store %struct.TCP_Server_Info* %19, %struct.TCP_Server_Info** %8, align 8
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %21 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CifsExiting, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SMB_COM_OPEN_ANDX, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SMB_COM_TREE_DISCONNECT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %158

41:                                               ; preds = %32, %28, %25
  br label %42

42:                                               ; preds = %41, %13
  br label %43

43:                                               ; preds = %77, %42
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %45 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CifsNeedReconnect, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %51 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %54 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CifsNeedReconnect, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 10, %59
  %61 = call i32 @wait_event_interruptible_timeout(i32 %52, i32 %58, i32 %60)
  %62 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %63 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CifsNeedReconnect, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %78

68:                                               ; preds = %49
  %69 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %70 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EHOSTDOWN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %158

77:                                               ; preds = %68
  br label %43

78:                                               ; preds = %67, %43
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %158

89:                                               ; preds = %83, %78
  %90 = call %struct.nls_table* (...) @load_nls_default()
  store %struct.nls_table* %90, %struct.nls_table** %9, align 8
  %91 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %92 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %95 = call i32 @cifs_negotiate_protocol(i32 0, %struct.cifs_ses* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %100 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %105 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %106 = call i32 @cifs_setup_session(i32 0, %struct.cifs_ses* %104, %struct.nls_table* %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %98, %89
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %112 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %117 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %149

119:                                              ; preds = %110
  %120 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %121 = call i32 @mark_open_files_invalid(%struct.cifs_tcon* %120)
  %122 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %123 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %124 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %127 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %128 = call i32 @CIFSTCon(i32 0, %struct.cifs_ses* %122, i32 %125, %struct.cifs_tcon* %126, %struct.nls_table* %127)
  store i32 %128, i32* %6, align 4
  %129 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %130 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %6, align 4
  %133 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %149

137:                                              ; preds = %119
  %138 = call i32 @atomic_inc(i32* @tconInfoReconnectCount)
  %139 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %140 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CAP_UNIX, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %147 = call i32 @reset_cifs_unix_caps(i32 0, %struct.cifs_tcon* %146, i32* null, i32* null)
  br label %148

148:                                              ; preds = %145, %137
  br label %149

149:                                              ; preds = %148, %136, %115
  %150 = load i32, i32* %5, align 4
  switch i32 %150, label %154 [
    i32 129, label %151
    i32 128, label %151
    i32 132, label %151
    i32 131, label %151
    i32 130, label %151
  ]

151:                                              ; preds = %149, %149, %149, %149, %149
  %152 = load i32, i32* @EAGAIN, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %151, %149
  %155 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %156 = call i32 @unload_nls(%struct.nls_table* %155)
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %88, %73, %36, %12
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local %struct.nls_table* @load_nls_default(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_negotiate_protocol(i32, %struct.cifs_ses*) #1

declare dso_local i32 @cifs_setup_session(i32, %struct.cifs_ses*, %struct.nls_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mark_open_files_invalid(%struct.cifs_tcon*) #1

declare dso_local i32 @CIFSTCon(i32, %struct.cifs_ses*, i32, %struct.cifs_tcon*, %struct.nls_table*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reset_cifs_unix_caps(i32, %struct.cifs_tcon*, i32*, i32*) #1

declare dso_local i32 @unload_nls(%struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
