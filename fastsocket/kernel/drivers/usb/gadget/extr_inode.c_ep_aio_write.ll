; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep_data* }
%struct.ep_data = type { i32 }
%struct.iovec = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @ep_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ep_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ep_data*, %struct.ep_data** %17, align 8
  store %struct.ep_data* %18, %struct.ep_data** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ep_data*, %struct.ep_data** %10, align 8
  %20 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %19, i32 0, i32 0
  %21 = call i32 @usb_endpoint_dir_in(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %95

30:                                               ; preds = %4
  %31 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %95

45:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %86, %45
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load %struct.iovec*, %struct.iovec** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.iovec*, %struct.iovec** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i64 %63
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @copy_from_user(i8* %54, i32 %60, i64 %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %51
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %95

77:                                               ; preds = %51
  %78 = load %struct.iovec*, %struct.iovec** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %78, i64 %80
  %82 = getelementptr inbounds %struct.iovec, %struct.iovec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %46

89:                                               ; preds = %46
  %90 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.ep_data*, %struct.ep_data** %10, align 8
  %94 = call i32 @ep_aio_rwtail(%struct.kiocb* %90, i8* %91, i64 %92, %struct.ep_data* %93, i32* null, i32 0)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %72, %42, %27
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_endpoint_dir_in(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ep_aio_rwtail(%struct.kiocb*, i8*, i64, %struct.ep_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
