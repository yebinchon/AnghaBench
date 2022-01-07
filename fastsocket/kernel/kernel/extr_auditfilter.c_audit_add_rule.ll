; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_add_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.audit_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, %struct.audit_watch*, %struct.audit_tree* }
%struct.audit_watch = type { i32 }
%struct.audit_tree = type { i32 }

@audit_filter_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@audit_inode_hash = common dso_local global %struct.list_head* null, align 8
@AUDIT_FILTER_EXIT = common dso_local global i64 0, align 8
@AUDIT_FILTER_PREPEND = common dso_local global i32 0, align 4
@prio_high = common dso_local global i64 0, align 8
@prio_low = common dso_local global i64 0, align 8
@audit_rules_list = common dso_local global i32* null, align 8
@AUDIT_FILTER_TYPE = common dso_local global i64 0, align 8
@AUDIT_FILTER_USER = common dso_local global i64 0, align 8
@audit_n_rules = common dso_local global i32 0, align 4
@audit_signals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_entry*)* @audit_add_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_add_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audit_entry*, align 8
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  %6 = alloca %struct.audit_tree*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.audit_entry* %0, %struct.audit_entry** %3, align 8
  %10 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %11 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load %struct.audit_watch*, %struct.audit_watch** %12, align 8
  store %struct.audit_watch* %13, %struct.audit_watch** %5, align 8
  %14 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %15 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load %struct.audit_tree*, %struct.audit_tree** %16, align 8
  store %struct.audit_tree* %17, %struct.audit_tree** %6, align 8
  %18 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %19 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %20 = call %struct.audit_entry* @audit_find_rule(%struct.audit_entry* %19, %struct.list_head** %7)
  store %struct.audit_entry* %20, %struct.audit_entry** %4, align 8
  %21 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %22 = icmp ne %struct.audit_entry* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %28 = icmp ne %struct.audit_tree* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %31 = call i32 @audit_put_tree(%struct.audit_tree* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %147

33:                                               ; preds = %1
  %34 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %35 = icmp ne %struct.audit_watch* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %38 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %37, i32 0, i32 1
  %39 = call i32 @audit_add_watch(%struct.TYPE_3__* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  br label %147

44:                                               ; preds = %36
  %45 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %46 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load %struct.audit_watch*, %struct.audit_watch** %47, align 8
  store %struct.audit_watch* %48, %struct.audit_watch** %5, align 8
  %49 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %50 = call i64 @audit_watch_inode(%struct.audit_watch* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @audit_hash_ino(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.list_head*, %struct.list_head** @audit_inode_hash, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.list_head, %struct.list_head* %53, i64 %55
  store %struct.list_head* %56, %struct.list_head** %7, align 8
  br label %57

57:                                               ; preds = %44, %33
  %58 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %59 = icmp ne %struct.audit_tree* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %62 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %61, i32 0, i32 1
  %63 = call i32 @audit_add_tree_rule(%struct.TYPE_3__* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  br label %147

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %71 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 -1, i64* %72, align 8
  %73 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %74 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AUDIT_FILTER_EXIT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %69
  %80 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %81 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i64, i64* @prio_high, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* @prio_high, align 8
  %90 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %91 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  br label %99

93:                                               ; preds = %79
  %94 = load i64, i64* @prio_low, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* @prio_low, align 8
  %96 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %97 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %99, %69
  %101 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %102 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %110 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32*, i32** @audit_rules_list, align 8
  %113 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %114 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = call i32 @list_add(i32* %111, i32* %117)
  %119 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %120 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %119, i32 0, i32 0
  %121 = load %struct.list_head*, %struct.list_head** %7, align 8
  %122 = call i32 @list_add_rcu(i32* %120, %struct.list_head* %121)
  %123 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %126 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %145

130:                                              ; preds = %100
  %131 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %132 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32*, i32** @audit_rules_list, align 8
  %135 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %136 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = call i32 @list_add_tail(i32* %133, i32* %139)
  %141 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %142 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %141, i32 0, i32 0
  %143 = load %struct.list_head*, %struct.list_head** %7, align 8
  %144 = call i32 @list_add_tail_rcu(i32* %142, %struct.list_head* %143)
  br label %145

145:                                              ; preds = %130, %108
  %146 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  store i32 0, i32* %2, align 4
  br label %155

147:                                              ; preds = %66, %42, %32
  %148 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %149 = icmp ne %struct.audit_watch* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %152 = call i32 @audit_put_watch(%struct.audit_watch* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %145
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.audit_entry* @audit_find_rule(%struct.audit_entry*, %struct.list_head**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @audit_put_tree(%struct.audit_tree*) #1

declare dso_local i32 @audit_add_watch(%struct.TYPE_3__*) #1

declare dso_local i32 @audit_hash_ino(i32) #1

declare dso_local i64 @audit_watch_inode(%struct.audit_watch*) #1

declare dso_local i32 @audit_add_tree_rule(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @audit_put_watch(%struct.audit_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
