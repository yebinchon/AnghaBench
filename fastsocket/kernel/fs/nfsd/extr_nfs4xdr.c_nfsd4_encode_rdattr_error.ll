; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_rdattr_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_rdattr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FATTR4_WORD0_RDATTR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i32, i8*)* @nfsd4_encode_rdattr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @nfsd4_encode_rdattr_error(i8** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8** null, i8*** %4, align 8
  br label %40

12:                                               ; preds = %3
  %13 = call i8* @htonl(i32 2)
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %5, align 8
  store i8* %13, i8** %14, align 8
  %16 = load i32, i32* @FATTR4_WORD0_RDATTR_ERROR, align 4
  %17 = call i8* @htonl(i32 %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %5, align 8
  store i8* %17, i8** %18, align 8
  %20 = call i8* @htonl(i32 0)
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %5, align 8
  store i8** %23, i8*** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = bitcast i8** %28 to i8*
  %30 = load i8**, i8*** %8, align 8
  %31 = bitcast i8** %30 to i8*
  %32 = ptrtoint i8* %29 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sub nsw i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i8* @htonl(i32 %36)
  %38 = load i8**, i8*** %8, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8** %39, i8*** %4, align 8
  br label %40

40:                                               ; preds = %12, %11
  %41 = load i8**, i8*** %4, align 8
  ret i8** %41
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
