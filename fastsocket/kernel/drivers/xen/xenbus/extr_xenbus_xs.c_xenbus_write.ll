; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_transaction = type { i32 }
%struct.kvec = type { i8*, i8* }

@XS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_write(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenbus_transaction, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x %struct.kvec], align 16
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  store i32 %0, i32* %13, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @join(i8* %14, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @strlen(i8* %27)
  %29 = getelementptr i8, i8* %28, i64 1
  %30 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 16
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 1
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strlen(i8* %35)
  %37 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 1
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 16
  %39 = load i32, i32* @XS_WRITE, align 4
  %40 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %41 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %11, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(%struct.kvec* %41)
  %43 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xs_talkv(i32 %44, i32 %39, %struct.kvec* %40, i32 %42, i32* null)
  %46 = call i32 @xs_error(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %23, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @xs_error(i32) #1

declare dso_local i32 @xs_talkv(i32, i32, %struct.kvec*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvec*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
