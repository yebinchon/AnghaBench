; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32, i8*, i8*, i64, i64, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfsd4_compoundargs*, i32)* @read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_buf(%struct.nfsd4_compoundargs* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %13 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %11 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %132

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i8* null, i8** %3, align 8
  br label %132

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ule i64 %37, 8
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmalloc(i32 %48, i32 %49)
  %51 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %52 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  store i8* %50, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %132

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %60 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @memcpy(i8* %58, i64 %61, i32 %62)
  %64 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %65 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @page_address(i32 %68)
  %70 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %71 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %73 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %73, align 8
  %76 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %77 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %57
  %82 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %83 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %86 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = lshr i32 %87, 2
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %92 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %94 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %110

95:                                               ; preds = %57
  %96 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %97 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = lshr i32 %99, 2
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %98, %101
  %103 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %104 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %107 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %95, %81
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %116 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub i32 %118, %119
  %121 = call i32 @memcpy(i8* %114, i64 %117, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub i32 %122, %123
  %125 = call i32 @XDR_QUADLEN(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %128 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load i8*, i8** %7, align 8
  store i8* %131, i8** %3, align 8
  br label %132

132:                                              ; preds = %110, %55, %34, %27
  %133 = load i8*, i8** %3, align 8
  ret i8* %133
}

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
