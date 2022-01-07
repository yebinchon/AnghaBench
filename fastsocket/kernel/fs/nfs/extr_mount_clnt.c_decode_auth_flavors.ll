; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_auth_flavors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_mount_clnt.c_decode_auth_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.mountres = type { i32*, i8** }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFS: received %u auth flavors\0A\00", align 1
@NFS_MAX_SECFLAVORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"NFS:   auth flavor[%u]: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.mountres*)* @decode_auth_flavors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_auth_flavors(%struct.xdr_stream* %0, %struct.mountres* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.mountres*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.mountres* %1, %struct.mountres** %5, align 8
  %11 = load %struct.mountres*, %struct.mountres** %5, align 8
  %12 = getelementptr inbounds %struct.mountres, %struct.mountres* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %6, align 8
  %14 = load %struct.mountres*, %struct.mountres** %5, align 8
  %15 = getelementptr inbounds %struct.mountres, %struct.mountres* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %23 = call i32* @xdr_inline_decode(%struct.xdr_stream* %22, i32 4)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %94

32:                                               ; preds = %21
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NFS_MAX_SECFLAVORS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @NFS_MAX_SECFLAVORS, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32* @xdr_inline_decode(%struct.xdr_stream* %45, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %94

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %59
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %73, align 4
  %76 = call i8* @ntohl(i32 %75)
  %77 = load i8**, i8*** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i8**, i8*** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %86)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %56, %29, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
