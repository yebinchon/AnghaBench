; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_encoded.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, %struct.TYPE_9__*, i32)* @ctf_add_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_add_encoded(i32* %0, i32 %1, i8* %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @ctf_set_errno(i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %54

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @ctf_add_generic(i32* %21, i32 %22, i8* %23, %struct.TYPE_10__** %12)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @CTF_ERR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @CTF_ERR, align 4
  store i32 %28, i32* %6, align 4
  br label %54

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CTF_TYPE_INFO(i32 %30, i32 %31, i32 0)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NBBY, align 4
  %40 = call i32 @P2ROUNDUP(i32 %38, i32 %39)
  %41 = load i32, i32* @NBBY, align 4
  %42 = sdiv i32 %40, %41
  %43 = call i32 @clp2(i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = bitcast %struct.TYPE_9__* %49 to i8*
  %52 = bitcast %struct.TYPE_9__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %29, %27, %16
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @ctf_set_errno(i32*, i32) #1

declare dso_local i32 @ctf_add_generic(i32*, i32, i8*, %struct.TYPE_10__**) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

declare dso_local i32 @clp2(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
