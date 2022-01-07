; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_iovec.c_verify_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_iovec.c_verify_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, %struct.iovec*, %struct.sockaddr*, i64 }
%struct.iovec = type { i64 }
%struct.sockaddr = type { i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @verify_iovec(%struct.msghdr* %0, %struct.iovec* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.msghdr* %0, %struct.msghdr** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @VERIFY_READ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 2
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %26 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = call i64 @move_addr_to_kernel(%struct.sockaddr* %25, i64 %28, %struct.sockaddr* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %5, align 8
  br label %101

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %38, i32 0, i32 2
  store %struct.sockaddr* %37, %struct.sockaddr** %39, align 8
  br label %43

40:                                               ; preds = %4
  %41 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 2
  store %struct.sockaddr* null, %struct.sockaddr** %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.iovec*, %struct.iovec** %7, align 8
  %51 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %51, i32 0, i32 1
  %53 = load %struct.iovec*, %struct.iovec** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @copy_from_user(%struct.iovec* %50, %struct.iovec* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i64, i64* @EFAULT, align 8
  %59 = sub nsw i64 0, %58
  store i64 %59, i64* %5, align 8
  br label %101

60:                                               ; preds = %43
  %61 = load %struct.iovec*, %struct.iovec** %7, align 8
  %62 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %62, i32 0, i32 1
  store %struct.iovec* %61, %struct.iovec** %63, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %96, %60
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %64
  %71 = load %struct.iovec*, %struct.iovec** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 %73
  %75 = getelementptr inbounds %struct.iovec, %struct.iovec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @INT_MAX, align 8
  %79 = load i64, i64* %12, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp ugt i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load i64, i64* @INT_MAX, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.iovec*, %struct.iovec** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %87, i64 %89
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 0
  store i64 %86, i64* %91, align 8
  br label %92

92:                                               ; preds = %82, %70
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %64

99:                                               ; preds = %64
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %57, %33
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i64 @move_addr_to_kernel(%struct.sockaddr*, i64, %struct.sockaddr*) #1

declare dso_local i64 @copy_from_user(%struct.iovec*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
