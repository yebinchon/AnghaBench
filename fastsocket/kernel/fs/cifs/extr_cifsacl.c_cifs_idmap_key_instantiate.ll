; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_cifs_idmap_key_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_cifs_idmap_key_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*, i64)* @cifs_idmap_key_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_idmap_key_instantiate(%struct.key* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ule i64 %9, 16
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load %struct.key*, %struct.key** %5, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8 0, i8* %14, align 8
  %15 = load %struct.key*, %struct.key** %5, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @memcpy(i8* %17, i8* %18, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.key*, %struct.key** %5, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.key*, %struct.key** %5, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.key*, %struct.key** %5, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %30, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
