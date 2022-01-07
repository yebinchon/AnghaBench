; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchVolumeStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchVolumeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume_status = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.afs_volume_status*)* @xdr_decode_AFSFetchVolumeStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_decode_AFSFetchVolumeStatus(i32** %0, %struct.afs_volume_status* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.afs_volume_status*, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.afs_volume_status* %1, %struct.afs_volume_status** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i8* @ntohl(i32 %10)
  %12 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %13 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %12, i32 0, i32 11
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = call i8* @ntohl(i32 %16)
  %18 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %19 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %18, i32 0, i32 10
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i8* @ntohl(i32 %22)
  %24 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %25 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %26, align 4
  %29 = call i8* @ntohl(i32 %28)
  %30 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %31 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* %32, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %37 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i8* @ntohl(i32 %40)
  %42 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %43 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i8* @ntohl(i32 %46)
  %48 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %49 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  %52 = load i32, i32* %50, align 4
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %55 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %5, align 8
  %58 = load i32, i32* %56, align 4
  %59 = call i8* @ntohl(i32 %58)
  %60 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %61 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %62, align 4
  %65 = call i8* @ntohl(i32 %64)
  %66 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %67 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %68, align 4
  %71 = call i8* @ntohl(i32 %70)
  %72 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %73 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %5, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i8* @ntohl(i32 %76)
  %78 = load %struct.afs_volume_status*, %struct.afs_volume_status** %4, align 8
  %79 = getelementptr inbounds %struct.afs_volume_status, %struct.afs_volume_status* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32**, i32*** %3, align 8
  store i32* %80, i32** %81, align 8
  ret void
}

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
