; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_entryplus_baggage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_entryplus_baggage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd3_readdirres = type { i32 }
%struct.svc_fh = type { i32 }

@NFS3_FHSIZE = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @encode_entryplus_baggage(%struct.nfsd3_readdirres* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nfsd3_readdirres*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.svc_fh, align 4
  %10 = alloca i32, align 4
  store %struct.nfsd3_readdirres* %0, %struct.nfsd3_readdirres** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @NFS3_FHSIZE, align 4
  %12 = call i32 @fh_init(%struct.svc_fh* %9, i32 %11)
  %13 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @compose_entry_fh(%struct.nfsd3_readdirres* %13, %struct.svc_fh* %9, i8* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %6, align 8
  store i32 0, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  store i32 0, i32* %22, align 4
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @encode_post_op_attr(i32 %27, i32* %28, %struct.svc_fh* %9)
  store i32* %29, i32** %6, align 8
  %30 = load i64, i64* @xdr_one, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @encode_fh(i32* %34, %struct.svc_fh* %9)
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %24, %19
  %37 = call i32 @fh_put(%struct.svc_fh* %9)
  %38 = load i32*, i32** %6, align 8
  ret i32* %38
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @compose_entry_fh(%struct.nfsd3_readdirres*, %struct.svc_fh*, i8*, i32) #1

declare dso_local i32* @encode_post_op_attr(i32, i32*, %struct.svc_fh*) #1

declare dso_local i32* @encode_fh(i32*, %struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
