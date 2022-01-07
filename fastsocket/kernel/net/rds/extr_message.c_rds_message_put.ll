; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"put rm %p ref %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"danger refcount zero on %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_message_put(%struct.rds_message* %0) #0 {
  %2 = alloca %struct.rds_message*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %2, align 8
  %3 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %4 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %5 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %4, i32 0, i32 2
  %6 = call i32 @atomic_read(i32* %5)
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.rds_message* %3, i32 %6)
  %8 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %9 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %15 = call i32 @WARN(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.rds_message* %14)
  %16 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %17 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %16, i32 0, i32 2
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %22 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %29 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %28, i32 0, i32 0
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %36 = call i32 @rds_message_purge(%struct.rds_message* %35)
  %37 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %38 = call i32 @kfree(%struct.rds_message* %37)
  br label %39

39:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_message*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @WARN(i32, i8*, %struct.rds_message*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rds_message_purge(%struct.rds_message*) #1

declare dso_local i32 @kfree(%struct.rds_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
