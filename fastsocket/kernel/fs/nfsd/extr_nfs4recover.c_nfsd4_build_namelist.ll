; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_build_namelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_build_namelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.name_list = type { i8*, i32 }

@HEXDIR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @nfsd4_build_namelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_build_namelist(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca %struct.name_list*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.list_head*
  store %struct.list_head* %17, %struct.list_head** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @HEXDIR_LEN, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %50

23:                                               ; preds = %6
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.name_list* @kmalloc(i32 16, i32 %24)
  store %struct.name_list* %25, %struct.name_list** %15, align 8
  %26 = load %struct.name_list*, %struct.name_list** %15, align 8
  %27 = icmp eq %struct.name_list* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load %struct.name_list*, %struct.name_list** %15, align 8
  %33 = getelementptr inbounds %struct.name_list, %struct.name_list* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @HEXDIR_LEN, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @memcpy(i8* %34, i8* %35, i32 %37)
  %39 = load %struct.name_list*, %struct.name_list** %15, align 8
  %40 = getelementptr inbounds %struct.name_list, %struct.name_list* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @HEXDIR_LEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load %struct.name_list*, %struct.name_list** %15, align 8
  %47 = getelementptr inbounds %struct.name_list, %struct.name_list* %46, i32 0, i32 1
  %48 = load %struct.list_head*, %struct.list_head** %14, align 8
  %49 = call i32 @list_add(i32* %47, %struct.list_head* %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %31, %28, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.name_list* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
