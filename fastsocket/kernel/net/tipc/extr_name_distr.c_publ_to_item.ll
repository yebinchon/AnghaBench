; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_publ_to_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_publ_to_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.distr_item = type { i8*, i8*, i8*, i8*, i8* }
%struct.publication = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"publ_to_item: %u, %u, %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.distr_item*, %struct.publication*)* @publ_to_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @publ_to_item(%struct.distr_item* %0, %struct.publication* %1) #0 {
  %3 = alloca %struct.distr_item*, align 8
  %4 = alloca %struct.publication*, align 8
  store %struct.distr_item* %0, %struct.distr_item** %3, align 8
  store %struct.publication* %1, %struct.publication** %4, align 8
  %5 = load %struct.publication*, %struct.publication** %4, align 8
  %6 = getelementptr inbounds %struct.publication, %struct.publication* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @htonl(i32 %7)
  %9 = load %struct.distr_item*, %struct.distr_item** %3, align 8
  %10 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load %struct.publication*, %struct.publication** %4, align 8
  %12 = getelementptr inbounds %struct.publication, %struct.publication* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @htonl(i32 %13)
  %15 = load %struct.distr_item*, %struct.distr_item** %3, align 8
  %16 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.publication*, %struct.publication** %4, align 8
  %18 = getelementptr inbounds %struct.publication, %struct.publication* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = load %struct.distr_item*, %struct.distr_item** %3, align 8
  %22 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.publication*, %struct.publication** %4, align 8
  %24 = getelementptr inbounds %struct.publication, %struct.publication* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = load %struct.distr_item*, %struct.distr_item** %3, align 8
  %28 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.publication*, %struct.publication** %4, align 8
  %30 = getelementptr inbounds %struct.publication, %struct.publication* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.distr_item*, %struct.distr_item** %3, align 8
  %34 = getelementptr inbounds %struct.distr_item, %struct.distr_item* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.publication*, %struct.publication** %4, align 8
  %36 = getelementptr inbounds %struct.publication, %struct.publication* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.publication*, %struct.publication** %4, align 8
  %39 = getelementptr inbounds %struct.publication, %struct.publication* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.publication*, %struct.publication** %4, align 8
  %42 = getelementptr inbounds %struct.publication, %struct.publication* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
