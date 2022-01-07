; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_eoc_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_eoc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8*, i8* }

@ASN1_ERR_DEC_EOC_MISMATCH = common dso_local global i8* null, align 8
@ASN1_ERR_DEC_LENGTH_MISMATCH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i8*)* @asn1_eoc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_eoc_decode(%struct.asn1_ctx* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.asn1_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %11 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %10, i8* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i8 0, i8* %3, align 1
  br label %47

14:                                               ; preds = %9
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** @ASN1_ERR_DEC_EOC_MISMATCH, align 8
  %20 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  store i8 0, i8* %3, align 1
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %24 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %23, i8* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i8 0, i8* %3, align 1
  br label %47

27:                                               ; preds = %22
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** @ASN1_ERR_DEC_EOC_MISMATCH, align 8
  %33 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  store i8 0, i8* %3, align 1
  br label %47

35:                                               ; preds = %27
  store i8 1, i8* %3, align 1
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** @ASN1_ERR_DEC_LENGTH_MISMATCH, align 8
  %44 = load %struct.asn1_ctx*, %struct.asn1_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  store i8 0, i8* %3, align 1
  br label %47

46:                                               ; preds = %36
  store i8 1, i8* %3, align 1
  br label %47

47:                                               ; preds = %46, %42, %35, %31, %26, %18, %13
  %48 = load i8, i8* %3, align 1
  ret i8 %48
}

declare dso_local i32 @asn1_octet_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
