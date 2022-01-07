; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_encode_AFS_StoreStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_encode_AFS_StoreStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATTR_MTIME = common dso_local global i32 0, align 4
@AFS_SET_MTIME = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@AFS_SET_OWNER = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@AFS_SET_GROUP = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@AFS_SET_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.iattr*)* @xdr_encode_AFS_StoreStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_encode_AFS_StoreStatus(i32** %0, %struct.iattr* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.iattr*, %struct.iattr** %4, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATTR_MTIME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @AFS_SET_MTIME, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.iattr*, %struct.iattr** %4, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_UID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* @AFS_SET_OWNER, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.iattr*, %struct.iattr** %4, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.iattr*, %struct.iattr** %4, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATTR_GID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* @AFS_SET_GROUP, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.iattr*, %struct.iattr** %4, align 8
  %53 = getelementptr inbounds %struct.iattr, %struct.iattr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.iattr*, %struct.iattr** %4, align 8
  %57 = getelementptr inbounds %struct.iattr, %struct.iattr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATTR_MODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @AFS_SET_MODE, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.iattr*, %struct.iattr** %4, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @S_IALLUGO, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %62, %55
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @htonl(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @htonl(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @htonl(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i8* @htonl(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %5, align 8
  store i32 0, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32**, i32*** %3, align 8
  store i32* %99, i32** %100, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
