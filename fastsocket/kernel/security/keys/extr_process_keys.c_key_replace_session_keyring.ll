; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_key_replace_session_keyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_process_keys.c_key_replace_session_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.cred* }
%struct.cred = type { %struct.TYPE_3__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@tasklist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_replace_session_keyring() #0 {
  %1 = alloca %struct.cred*, align 8
  %2 = alloca %struct.cred*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.cred*, %struct.cred** %4, align 8
  %6 = icmp ne %struct.cred* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %133

8:                                                ; preds = %0
  %9 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.cred*, %struct.cred** %11, align 8
  store %struct.cred* %12, %struct.cred** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.cred* null, %struct.cred** %14, align 8
  %15 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %16 = load %struct.cred*, %struct.cred** %2, align 8
  %17 = icmp ne %struct.cred* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  br label %133

19:                                               ; preds = %8
  %20 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %20, %struct.cred** %1, align 8
  %21 = load %struct.cred*, %struct.cred** %1, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cred*, %struct.cred** %2, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 17
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cred*, %struct.cred** %1, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 16
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cred*, %struct.cred** %2, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cred*, %struct.cred** %1, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cred*, %struct.cred** %2, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cred*, %struct.cred** %1, align 8
  %37 = getelementptr inbounds %struct.cred, %struct.cred* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cred*, %struct.cred** %2, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cred*, %struct.cred** %1, align 8
  %42 = getelementptr inbounds %struct.cred, %struct.cred* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cred*, %struct.cred** %2, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cred*, %struct.cred** %1, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cred*, %struct.cred** %2, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cred*, %struct.cred** %1, align 8
  %52 = getelementptr inbounds %struct.cred, %struct.cred* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cred*, %struct.cred** %2, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cred*, %struct.cred** %1, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cred*, %struct.cred** %2, align 8
  %60 = getelementptr inbounds %struct.cred, %struct.cred* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cred*, %struct.cred** %1, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @get_uid(i32 %63)
  %65 = load %struct.cred*, %struct.cred** %2, align 8
  %66 = getelementptr inbounds %struct.cred, %struct.cred* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cred*, %struct.cred** %1, align 8
  %68 = getelementptr inbounds %struct.cred, %struct.cred* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @get_group_info(i32 %69)
  %71 = load %struct.cred*, %struct.cred** %2, align 8
  %72 = getelementptr inbounds %struct.cred, %struct.cred* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cred*, %struct.cred** %1, align 8
  %74 = getelementptr inbounds %struct.cred, %struct.cred* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cred*, %struct.cred** %2, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cred*, %struct.cred** %1, align 8
  %79 = getelementptr inbounds %struct.cred, %struct.cred* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.cred*, %struct.cred** %2, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cred*, %struct.cred** %1, align 8
  %84 = getelementptr inbounds %struct.cred, %struct.cred* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cred*, %struct.cred** %2, align 8
  %87 = getelementptr inbounds %struct.cred, %struct.cred* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cred*, %struct.cred** %1, align 8
  %89 = getelementptr inbounds %struct.cred, %struct.cred* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cred*, %struct.cred** %2, align 8
  %92 = getelementptr inbounds %struct.cred, %struct.cred* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cred*, %struct.cred** %1, align 8
  %94 = getelementptr inbounds %struct.cred, %struct.cred* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cred*, %struct.cred** %2, align 8
  %97 = getelementptr inbounds %struct.cred, %struct.cred* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.cred*, %struct.cred** %1, align 8
  %99 = getelementptr inbounds %struct.cred, %struct.cred* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cred*, %struct.cred** %2, align 8
  %102 = getelementptr inbounds %struct.cred, %struct.cred* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cred*, %struct.cred** %1, align 8
  %104 = getelementptr inbounds %struct.cred, %struct.cred* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @key_get(i8* %105)
  %107 = load %struct.cred*, %struct.cred** %2, align 8
  %108 = getelementptr inbounds %struct.cred, %struct.cred* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.cred*, %struct.cred** %1, align 8
  %110 = getelementptr inbounds %struct.cred, %struct.cred* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cred*, %struct.cred** %2, align 8
  %115 = getelementptr inbounds %struct.cred, %struct.cred* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 8
  %118 = load %struct.cred*, %struct.cred** %1, align 8
  %119 = getelementptr inbounds %struct.cred, %struct.cred* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @key_get(i8* %122)
  %124 = load %struct.cred*, %struct.cred** %2, align 8
  %125 = getelementptr inbounds %struct.cred, %struct.cred* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i8* %123, i8** %127, align 8
  %128 = load %struct.cred*, %struct.cred** %2, align 8
  %129 = load %struct.cred*, %struct.cred** %1, align 8
  %130 = call i32 @security_transfer_creds(%struct.cred* %128, %struct.cred* %129)
  %131 = load %struct.cred*, %struct.cred** %2, align 8
  %132 = call i32 @commit_creds(%struct.cred* %131)
  br label %133

133:                                              ; preds = %19, %18, %7
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @get_uid(i32) #1

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i8* @key_get(i8*) #1

declare dso_local i32 @security_transfer_creds(%struct.cred*, %struct.cred*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
