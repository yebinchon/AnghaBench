; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_pre_op_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_pre_op_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fattr*)* @xdr_decode_pre_op_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_decode_pre_op_attr(i32* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %13 = call i32* @xdr_decode_wcc_attr(i32* %11, %struct.nfs_fattr* %12)
  store i32* %13, i32** %3, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32*, i32** %3, align 8
  ret i32* %17
}

declare dso_local i32* @xdr_decode_wcc_attr(i32*, %struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
