; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dns_resolve.c_nfs_dns_resolve_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dns_resolve.c_nfs_dns_resolve_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.nfs_dns_ent = type { i8*, i64, i64, i32, i32 }

@nfs_dns_resolve = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_dns_resolve_name(i8* %0, i64 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs_dns_ent, align 8
  %10 = alloca %struct.nfs_dns_ent*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 0
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 4
  store i32 0, i32* %18, align 4
  store %struct.nfs_dns_ent* null, %struct.nfs_dns_ent** %10, align 8
  %19 = call i64 @do_cache_lookup_wait(i32* @nfs_dns_resolve, %struct.nfs_dns_ent* %9, %struct.nfs_dns_ent** %10)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %25 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %31 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %30, i32 0, i32 4
  %32 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %33 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @memcpy(%struct.sockaddr* %29, i32* %31, i64 %34)
  %36 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %37 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  br label %42

39:                                               ; preds = %22
  %40 = load i64, i64* @EOVERFLOW, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %44 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %43, i32 0, i32 3
  %45 = call i32 @cache_put(i32* %44, i32* @nfs_dns_resolve)
  br label %55

46:                                               ; preds = %4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @ENOENT, align 8
  %49 = sub i64 0, %48
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* @ESRCH, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i64, i64* %11, align 8
  ret i64 %56
}

declare dso_local i64 @do_cache_lookup_wait(i32*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent**) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i64) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
