; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_super_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_super_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_server*)* @nfs_compare_super_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_super_address(%struct.nfs_server* %0, %struct.nfs_server* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %6, align 8
  %17 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %7, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %2
  %31 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %81 [
    i32 129, label %34
    i32 128, label %59
  ]

34:                                               ; preds = %30
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %8, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %9, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %83

49:                                               ; preds = %34
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %83

58:                                               ; preds = %49
  br label %82

59:                                               ; preds = %30
  %60 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %61 = bitcast %struct.sockaddr* %60 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %61, %struct.sockaddr_in6** %10, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %63 = bitcast %struct.sockaddr* %62 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %63, %struct.sockaddr_in6** %11, align 8
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 1
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 1
  %68 = call i32 @ipv6_addr_equal(i32* %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %83

71:                                               ; preds = %59
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %83

80:                                               ; preds = %71
  br label %82

81:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %80, %58
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81, %79, %70, %57, %48, %29
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
