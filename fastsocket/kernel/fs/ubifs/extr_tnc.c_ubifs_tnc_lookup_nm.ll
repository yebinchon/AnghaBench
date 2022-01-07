; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_lookup_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_lookup_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.ubifs_dent_node = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_dent_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %14, %struct.ubifs_dent_node** %12, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @ubifs_tnc_lookup(%struct.ubifs_info* %15, %union.ubifs_key* %16, i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %25 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.qstr*, %struct.qstr** %9, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %35 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qstr*, %struct.qstr** %9, align 8
  %38 = getelementptr inbounds %struct.qstr, %struct.qstr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memcmp(i32 %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %50

44:                                               ; preds = %33, %23
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %46 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.qstr*, %struct.qstr** %9, align 8
  %49 = call i32 @do_lookup_nm(%struct.ubifs_info* %45, %union.ubifs_key* %46, i8* %47, %struct.qstr* %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %43, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ubifs_tnc_lookup(%struct.ubifs_info*, %union.ubifs_key*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @do_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, i8*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
