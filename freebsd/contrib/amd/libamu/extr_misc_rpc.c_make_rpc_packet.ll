; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_make_rpc_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_make_rpc_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_msg = type { i32 }

@XDR_ENCODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_rpc_packet(i8* %0, i32 %1, i32 %2, %struct.rpc_msg* %3, i32 %4, i32 (i32*, i32)* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_msg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i32*, i32)*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.rpc_msg* %3, %struct.rpc_msg** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 (i32*, i32)* %5, i32 (i32*, i32)** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @XDR_ENCODE, align 4
  %23 = call i32 @xdrmem_create(i32* %16, i8* %20, i32 %21, i32 %22)
  %24 = load %struct.rpc_msg*, %struct.rpc_msg** %12, align 8
  %25 = call i32 @xdr_callhdr(i32* %16, %struct.rpc_msg* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %55

30:                                               ; preds = %7
  %31 = call i32 @xdr_enum(i32* %16, i32* %18)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %55

36:                                               ; preds = %30
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @AUTH_MARSHALL(i32* %37, i32* %16)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i32 (i32*, i32)*, i32 (i32*, i32)** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 %44(i32* %16, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %43
  %52 = call i32 @xdr_getpos(i32* %16)
  store i32 %52, i32* %17, align 4
  %53 = call i32 @xdr_destroy(i32* %16)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %48, %40, %33, %27
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @xdrmem_create(i32*, i8*, i32, i32) #1

declare dso_local i32 @xdr_callhdr(i32*, %struct.rpc_msg*) #1

declare dso_local i32 @xdr_enum(i32*, i32*) #1

declare dso_local i32 @AUTH_MARSHALL(i32*, i32*) #1

declare dso_local i32 @xdr_getpos(i32*) #1

declare dso_local i32 @xdr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
