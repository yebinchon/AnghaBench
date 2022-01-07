; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_reset_cifs_unix_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_reset_cifs_unix_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cifs_sb_info = type { i64, i32*, i32 }
%struct.smb_vol = type { i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Linux protocol extensions disabled\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unix extensions disabled so not set on reconnect\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unix caps which server supports %lld\00", align 1
@CIFS_UNIX_POSIX_ACL_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATHNAMES_CAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"POSIXPATH support change\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"possible reconnect error\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"server disabled POSIX path support\00", align 1
@CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"per-share encryption not supported yet\00", align 1
@CIFS_UNIX_CAP_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"negotiated posix acl support\00", align 1
@CIFS_MOUNT_POSIXACL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"negotiate posix pathnames\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Negotiate caps 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"resetting capabilities failed\00", align 1
@.str.11 = private unnamed_addr constant [170 x i8] c"Negotiating Unix capabilities with the server failed.  Consider mounting with the Unix Extensions\0Adisabled, if problems are found, by specifying the nounix mount option.\00", align 1
@CIFS_UNIX_EXTATTR_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_LARGE_READ_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_LARGE_WRITE_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_TRANSPORT_ENCRYPTION_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_XATTR_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_cifs_unix_caps(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, %struct.smb_vol* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.smb_vol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %7, align 8
  store %struct.smb_vol* %3, %struct.smb_vol** %8, align 8
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %12 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @le64_to_cpu(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %17 = icmp ne %struct.smb_vol* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %20 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %198

30:                                               ; preds = %18, %4
  %31 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %32 = icmp ne %struct.smb_vol* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %35 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %198

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %47 = call i32 @CIFSSMBQFSUnixInfo(i32 %45, %struct.cifs_tcon* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %198, label %49

49:                                               ; preds = %44
  %50 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %51 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le64_to_cpu(i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %58 = icmp eq %struct.smb_vol* %57, null
  br i1 %58, label %59, label %96

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %95

86:                                               ; preds = %69
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %49
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* @CIFS_UNIX_CAP_MASK, align 4
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %108 = icmp ne %struct.smb_vol* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %111 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %136

119:                                              ; preds = %109, %103
  %120 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %127 = icmp ne %struct.cifs_sb_info* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* @CIFS_MOUNT_POSIXACL, align 4
  %130 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %131 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %124
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %138 = icmp ne %struct.smb_vol* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %141 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %10, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %166

149:                                              ; preds = %139, %136
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %156 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %157 = icmp ne %struct.cifs_sb_info* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %160 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %161 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %154
  br label %165

165:                                              ; preds = %164, %149
  br label %166

166:                                              ; preds = %165, %144
  %167 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %168 = icmp ne %struct.cifs_sb_info* %167, null
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %171 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %176 = call i32 @CIFS_DIR_SEP(%struct.cifs_sb_info* %175)
  %177 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %178 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %169, %166
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i64 @CIFSSMBSetFSUnixInfo(i32 %184, %struct.cifs_tcon* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %181
  %190 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %191 = icmp eq %struct.smb_vol* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %196

194:                                              ; preds = %189
  %195 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.11, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %192
  br label %197

197:                                              ; preds = %196, %181
  br label %198

198:                                              ; preds = %23, %42, %197, %44
  ret void
}

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @CIFSSMBQFSUnixInfo(i32, %struct.cifs_tcon*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i64 @CIFSSMBSetFSUnixInfo(i32, %struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
