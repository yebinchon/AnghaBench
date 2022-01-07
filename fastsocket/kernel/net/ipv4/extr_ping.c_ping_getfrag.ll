; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_getfrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pingfakehdr = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* @ping_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ping_getfrag(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.pingfakehdr*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.pingfakehdr*
  store %struct.pingfakehdr* %16, %struct.pingfakehdr** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load %struct.pingfakehdr*, %struct.pingfakehdr** %14, align 8
  %29 = getelementptr inbounds %struct.pingfakehdr, %struct.pingfakehdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load %struct.pingfakehdr*, %struct.pingfakehdr** %14, align 8
  %36 = getelementptr inbounds %struct.pingfakehdr, %struct.pingfakehdr* %35, i32 0, i32 0
  %37 = call i64 @csum_partial_copy_fromiovecend(i8* %27, i32 %30, i32 0, i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %67

43:                                               ; preds = %6
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.pingfakehdr*, %struct.pingfakehdr** %14, align 8
  %52 = getelementptr inbounds %struct.pingfakehdr, %struct.pingfakehdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.pingfakehdr*, %struct.pingfakehdr** %14, align 8
  %60 = getelementptr inbounds %struct.pingfakehdr, %struct.pingfakehdr* %59, i32 0, i32 0
  %61 = call i64 @csum_partial_copy_fromiovecend(i8* %50, i32 %53, i32 %57, i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EFAULT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %63, %42, %39
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @csum_partial_copy_fromiovecend(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
