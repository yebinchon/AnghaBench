; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_move_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_move_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec**, i64*, %struct.kvec*, i32)* @smb_move_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_move_iov(%struct.kvec** %0, i64* %1, %struct.kvec* %2, i32 %3) #0 {
  %5 = alloca %struct.kvec**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvec** %0, %struct.kvec*** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.kvec* %2, %struct.kvec** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kvec**, %struct.kvec*** %5, align 8
  %13 = load %struct.kvec*, %struct.kvec** %12, align 8
  store %struct.kvec* %13, %struct.kvec** %9, align 8
  br label %14

14:                                               ; preds = %20, %4
  %15 = load %struct.kvec*, %struct.kvec** %9, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.kvec*, %struct.kvec** %9, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.kvec*, %struct.kvec** %9, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 1
  store %struct.kvec* %27, %struct.kvec** %9, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.kvec*, %struct.kvec** %9, align 8
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %34, %35
  %37 = load %struct.kvec*, %struct.kvec** %7, align 8
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i64 0
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.kvec*, %struct.kvec** %9, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load %struct.kvec*, %struct.kvec** %7, align 8
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i64 0
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.kvec*, %struct.kvec** %9, align 8
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i32 1
  store %struct.kvec* %50, %struct.kvec** %9, align 8
  %51 = load %struct.kvec*, %struct.kvec** %7, align 8
  %52 = getelementptr inbounds %struct.kvec, %struct.kvec* %51, i64 0
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %78, %31
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.kvec*, %struct.kvec** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i64 %64
  %66 = load %struct.kvec*, %struct.kvec** %9, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 1
  store %struct.kvec* %67, %struct.kvec** %9, align 8
  %68 = bitcast %struct.kvec* %65 to i8*
  %69 = bitcast %struct.kvec* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.kvec*, %struct.kvec** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %70, i64 %72
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load %struct.kvec*, %struct.kvec** %7, align 8
  %83 = load %struct.kvec**, %struct.kvec*** %5, align 8
  store %struct.kvec* %82, %struct.kvec** %83, align 8
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
