; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_ff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_fattr = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.smb_request = type { i8*, i32, i8*, i32, i8*, i64, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"name=%s, len=%d\0A\00", align 1
@aSYSTEM = common dso_local global i32 0, align 4
@aHIDDEN = common dso_local global i32 0, align 4
@aDIR = common dso_local global i32 0, align 4
@TRANSACT2_FINDFIRST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bad result for %s, len=%d, count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"name=%s, date=%x, time=%x, mtime=%ld\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* @smb_proc_getattr_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_ff(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_fattr* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smb_fattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.smb_fattr* %2, %struct.smb_fattr** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %16, i32 %17)
  store %struct.smb_request* %18, %struct.smb_request** %13, align 8
  %19 = icmp ne %struct.smb_request* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %186

21:                                               ; preds = %3
  %22 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 12
  store i8* %26, i8** %8, align 8
  %27 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i32 @smb_encode_path(%struct.smb_sb_info* %27, i8* %28, i64 %30, %struct.dentry* %31, i32* null)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  br label %183

37:                                               ; preds = %21
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, i8*, i32, ...) @VERBOSE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @aSYSTEM, align 4
  %43 = load i32, i32* @aHIDDEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @aDIR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @WSET(i8* %41, i32 0, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @WSET(i8* %48, i32 2, i32 1)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @WSET(i8* %50, i32 4, i32 1)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @WSET(i8* %52, i32 6, i32 1)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @DSET(i8* %54, i32 8, i32 0)
  %56 = load i32, i32* @TRANSACT2_FINDFIRST, align 4
  %57 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %58 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %60 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %62 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %61, i32 0, i32 2
  store i8* null, i8** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 12, %63
  %65 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %66 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %69 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %71 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %73 = call i32 @smb_add_request(%struct.smb_request* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %37
  br label %183

77:                                               ; preds = %37
  %78 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %79 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %84 = call i32 @smb_errno(%struct.smb_request* %83)
  store i32 %84, i32* %12, align 4
  br label %183

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  %88 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %89 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 22
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %94 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @WVAL(i8* %95, i32 2)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %108

98:                                               ; preds = %92, %85
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %101 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %104 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @WVAL(i8* %105, i32 2)
  %107 = call i32 @PARANOIA(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %102, i32 %106)
  br label %183

108:                                              ; preds = %92
  %109 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %110 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @WVAL(i8* %111, i32 0)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %114 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @WVAL(i8* %115, i32 2)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i8* @date_dos2unix(%struct.smb_sb_info* %117, i32 %118, i32 %119)
  %121 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %122 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i8* %120, i8** %123, align 8
  %124 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %125 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %128 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @WVAL(i8* %129, i32 4)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %132 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @WVAL(i8* %133, i32 6)
  store i32 %134, i32* %10, align 4
  %135 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i8* @date_dos2unix(%struct.smb_sb_info* %135, i32 %136, i32 %137)
  %139 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %140 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %143 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %146 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @WVAL(i8* %147, i32 8)
  store i32 %148, i32* %9, align 4
  %149 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %150 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @WVAL(i8* %151, i32 10)
  store i32 %152, i32* %10, align 4
  %153 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i8* @date_dos2unix(%struct.smb_sb_info* %153, i32 %154, i32 %155)
  %157 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %158 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i8* %156, i8** %159, align 8
  %160 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %161 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %167 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i8*, i8*, i32, ...) @VERBOSE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %163, i32 %164, i32 %165, i8* %169)
  %171 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %172 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @DVAL(i8* %173, i32 12)
  %175 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %176 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %178 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @WVAL(i8* %179, i32 20)
  %181 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %182 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %108, %98, %82, %76, %35
  %184 = load %struct.smb_request*, %struct.smb_request** %13, align 8
  %185 = call i32 @smb_rput(%struct.smb_request* %184)
  br label %186

186:                                              ; preds = %183, %20
  %187 = load i32, i32* %12, align 4
  ret i32 %187
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i32 @VERBOSE(i8*, i8*, i32, ...) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @smb_errno(%struct.smb_request*) #1

declare dso_local i32 @WVAL(i8*, i32) #1

declare dso_local i32 @PARANOIA(i8*, i8*, i32, i32) #1

declare dso_local i8* @date_dos2unix(%struct.smb_sb_info*, i32, i32) #1

declare dso_local i32 @DVAL(i8*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
