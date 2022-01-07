; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr_unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i8*, i32, i8*, i32, i8*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"valid flags = 0x%04x\0A\00", align 1
@SMB_SET_FILE_UNIX_BASIC = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@SMB_SIZE_NO_CHANGE = common dso_local global i32 0, align 4
@SMB_TIME_NO_CHANGE = common dso_local global i32 0, align 4
@SMB_UID_NO_CHANGE = common dso_local global i32 0, align 4
@SMB_GID_NO_CHANGE = common dso_local global i32 0, align 4
@SMB_MODE_NO_CHANGE = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@TRANSACT2_SETPATHINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_setattr_unix(%struct.dentry* %0, %struct.iattr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  %15 = alloca %struct.smb_request*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %16)
  store %struct.smb_sb_info* %17, %struct.smb_sb_info** %9, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %20, i32 %21)
  store %struct.smb_request* %22, %struct.smb_request** %15, align 8
  %23 = icmp ne %struct.smb_request* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %219

25:                                               ; preds = %4
  %26 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load %struct.iattr*, %struct.iattr** %6, align 8
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DEBUG1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @SMB_SET_FILE_UNIX_BASIC, align 4
  %35 = call i32 @WSET(i8* %33, i32 0, i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @DSET(i8* %36, i32 2, i32 0)
  %38 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  %41 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i32 @smb_encode_path(%struct.smb_sb_info* %38, i8* %40, i64 %42, %struct.dentry* %43, i32* null)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %216

48:                                               ; preds = %25
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %11, align 8
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %55 = load i32, i32* @SMB_SIZE_NO_CHANGE, align 4
  %56 = call i32 @LSET(i8* %54, i32 0, i32 %55)
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %58 = load i32, i32* @SMB_SIZE_NO_CHANGE, align 4
  %59 = call i32 @LSET(i8* %57, i32 8, i32 %58)
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %61 = load i32, i32* @SMB_TIME_NO_CHANGE, align 4
  %62 = call i32 @LSET(i8* %60, i32 16, i32 %61)
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %64 = load i32, i32* @SMB_TIME_NO_CHANGE, align 4
  %65 = call i32 @LSET(i8* %63, i32 24, i32 %64)
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %67 = load i32, i32* @SMB_TIME_NO_CHANGE, align 4
  %68 = call i32 @LSET(i8* %66, i32 32, i32 %67)
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %70 = load i32, i32* @SMB_UID_NO_CHANGE, align 4
  %71 = call i32 @LSET(i8* %69, i32 40, i32 %70)
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %73 = load i32, i32* @SMB_GID_NO_CHANGE, align 4
  %74 = call i32 @LSET(i8* %72, i32 48, i32 %73)
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %76 = load %struct.iattr*, %struct.iattr** %6, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @smb_filetype_from_mode(i32 %78)
  %80 = call i32 @DSET(i8* %75, i32 56, i32 %79)
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @LSET(i8* %81, i32 60, i32 %82)
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @LSET(i8* %84, i32 68, i32 %85)
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %88 = call i32 @LSET(i8* %87, i32 76, i32 0)
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %90 = load i32, i32* @SMB_MODE_NO_CHANGE, align 4
  %91 = call i32 @LSET(i8* %89, i32 84, i32 %90)
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %93 = call i32 @LSET(i8* %92, i32 92, i32 0)
  %94 = load %struct.iattr*, %struct.iattr** %6, align 8
  %95 = getelementptr inbounds %struct.iattr, %struct.iattr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATTR_SIZE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %48
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %102 = load %struct.iattr*, %struct.iattr** %6, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @LSET(i8* %101, i32 0, i32 %104)
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %107 = call i32 @LSET(i8* %106, i32 8, i32 0)
  br label %108

108:                                              ; preds = %100, %48
  %109 = load %struct.iattr*, %struct.iattr** %6, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ATTR_CTIME, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.iattr*, %struct.iattr** %6, align 8
  %117 = getelementptr inbounds %struct.iattr, %struct.iattr* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @smb_unixutc2ntutc(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @LSET(i8* %120, i32 16, i32 %121)
  br label %123

123:                                              ; preds = %115, %108
  %124 = load %struct.iattr*, %struct.iattr** %6, align 8
  %125 = getelementptr inbounds %struct.iattr, %struct.iattr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATTR_ATIME, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load %struct.iattr*, %struct.iattr** %6, align 8
  %132 = getelementptr inbounds %struct.iattr, %struct.iattr* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @smb_unixutc2ntutc(i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @LSET(i8* %135, i32 24, i32 %136)
  br label %138

138:                                              ; preds = %130, %123
  %139 = load %struct.iattr*, %struct.iattr** %6, align 8
  %140 = getelementptr inbounds %struct.iattr, %struct.iattr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ATTR_MTIME, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.iattr*, %struct.iattr** %6, align 8
  %147 = getelementptr inbounds %struct.iattr, %struct.iattr* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @smb_unixutc2ntutc(i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @LSET(i8* %150, i32 32, i32 %151)
  br label %153

153:                                              ; preds = %145, %138
  %154 = load %struct.iattr*, %struct.iattr** %6, align 8
  %155 = getelementptr inbounds %struct.iattr, %struct.iattr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATTR_UID, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %162 = load %struct.iattr*, %struct.iattr** %6, align 8
  %163 = getelementptr inbounds %struct.iattr, %struct.iattr* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @LSET(i8* %161, i32 40, i32 %164)
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.iattr*, %struct.iattr** %6, align 8
  %168 = getelementptr inbounds %struct.iattr, %struct.iattr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ATTR_GID, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %175 = load %struct.iattr*, %struct.iattr** %6, align 8
  %176 = getelementptr inbounds %struct.iattr, %struct.iattr* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @LSET(i8* %174, i32 48, i32 %177)
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.iattr*, %struct.iattr** %6, align 8
  %181 = getelementptr inbounds %struct.iattr, %struct.iattr* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ATTR_MODE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %188 = load %struct.iattr*, %struct.iattr** %6, align 8
  %189 = getelementptr inbounds %struct.iattr, %struct.iattr* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @LSET(i8* %187, i32 84, i32 %190)
  br label %192

192:                                              ; preds = %186, %179
  %193 = load i32, i32* @TRANSACT2_SETPATHINFO, align 4
  %194 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %195 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 8
  %196 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %197 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %196, i32 0, i32 1
  store i32 100, i32* %197, align 8
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %199 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %200 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = trunc i64 %205 to i32
  %207 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %208 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load i8*, i8** %12, align 8
  %210 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %211 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  %212 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %213 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %215 = call i32 @smb_add_request(%struct.smb_request* %214)
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %192, %47
  %217 = load %struct.smb_request*, %struct.smb_request** %15, align 8
  %218 = call i32 @smb_rput(%struct.smb_request* %217)
  br label %219

219:                                              ; preds = %216, %24
  %220 = load i32, i32* %13, align 4
  ret i32 %220
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @DEBUG1(i8*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i32 @LSET(i8*, i32, i32) #1

declare dso_local i32 @smb_filetype_from_mode(i32) #1

declare dso_local i32 @smb_unixutc2ntutc(i32) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
