; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_parse_security_flavors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_parse_security_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32, i32, i32* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NFS: parsing sec=%s option\0A\00", align 1
@nfs_secflavor_tokens = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5 = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5I = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5P = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEY = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEYI = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEYP = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKM = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKMI = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKMP = common dso_local global i32 0, align 4
@NFS_MOUNT_SECFLAVOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nfs_parsed_mount_data*)* @nfs_parse_security_flavors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_parse_security_flavors(i8* %0, %struct.nfs_parsed_mount_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nfs_parsed_mount_data* %1, %struct.nfs_parsed_mount_data** %5, align 8
  %9 = load i32, i32* @MAX_OPT_ARGS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @MOUNT, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @dfprintk(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @nfs_secflavor_tokens, align 4
  %18 = call i32 @match_token(i8* %16, i32 %17, i32* %12)
  switch i32 %18, label %85 [
    i32 132, label %19
    i32 128, label %25
    i32 138, label %31
    i32 137, label %37
    i32 136, label %43
    i32 135, label %49
    i32 134, label %55
    i32 133, label %61
    i32 131, label %67
    i32 130, label %73
    i32 129, label %79
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @RPC_AUTH_NULL, align 4
  %21 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  br label %86

25:                                               ; preds = %2
  %26 = load i32, i32* @RPC_AUTH_UNIX, align 4
  %27 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  br label %86

31:                                               ; preds = %2
  %32 = load i32, i32* @RPC_AUTH_GSS_KRB5, align 4
  %33 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  br label %86

37:                                               ; preds = %2
  %38 = load i32, i32* @RPC_AUTH_GSS_KRB5I, align 4
  %39 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  br label %86

43:                                               ; preds = %2
  %44 = load i32, i32* @RPC_AUTH_GSS_KRB5P, align 4
  %45 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  br label %86

49:                                               ; preds = %2
  %50 = load i32, i32* @RPC_AUTH_GSS_LKEY, align 4
  %51 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  br label %86

55:                                               ; preds = %2
  %56 = load i32, i32* @RPC_AUTH_GSS_LKEYI, align 4
  %57 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  br label %86

61:                                               ; preds = %2
  %62 = load i32, i32* @RPC_AUTH_GSS_LKEYP, align 4
  %63 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %64 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  br label %86

67:                                               ; preds = %2
  %68 = load i32, i32* @RPC_AUTH_GSS_SPKM, align 4
  %69 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  br label %86

73:                                               ; preds = %2
  %74 = load i32, i32* @RPC_AUTH_GSS_SPKMI, align 4
  %75 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %76 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  br label %86

79:                                               ; preds = %2
  %80 = load i32, i32* @RPC_AUTH_GSS_SPKMP, align 4
  %81 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %82 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %80, i32* %84, align 4
  br label %86

85:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %94

86:                                               ; preds = %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19
  %87 = load i32, i32* @NFS_MOUNT_SECFLAVOUR, align 4
  %88 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %89 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %93 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %86, %85
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dfprintk(i32, i8*, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
