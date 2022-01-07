; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c___nf_ct_ext_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c___nf_ct_ext_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.nf_ct_ext* }
%struct.nf_ct_ext = type { i32, i32*, i32 }
%struct.nf_ct_ext_type = type { i32, i32 (i8*, i8*)*, i32 }

@nf_ct_ext_types = common dso_local global i32* null, align 8
@NF_CT_EXT_NUM = common dso_local global i32 0, align 4
@__nf_ct_ext_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__nf_ct_ext_add(%struct.nf_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_ct_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_ct_ext_type*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %14 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @NF_CT_ASSERT(i32 %17)
  %19 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 0
  %21 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %20, align 8
  %22 = icmp ne %struct.nf_ct_ext* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %25 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @nf_ct_ext_create(%struct.nf_ct_ext** %25, i32 %26, i32 %27)
  store i8* %28, i8** %4, align 8
  br label %174

29:                                               ; preds = %3
  %30 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @nf_ct_ext_exist(%struct.nf_conn* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %174

35:                                               ; preds = %29
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load i32*, i32** @nf_ct_ext_types, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.nf_ct_ext_type* @rcu_dereference(i32 %41)
  store %struct.nf_ct_ext_type* %42, %struct.nf_ct_ext_type** %12, align 8
  %43 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %44 = icmp eq %struct.nf_ct_ext_type* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 0
  %49 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %48, align 8
  %50 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %53 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ALIGN(i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %58 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %10, align 4
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 0
  %64 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.nf_ct_ext* @__krealloc(%struct.nf_ct_ext* %64, i32 %65, i32 %66)
  store %struct.nf_ct_ext* %67, %struct.nf_ct_ext** %8, align 8
  %68 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %69 = icmp ne %struct.nf_ct_ext* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %35
  store i8* null, i8** %4, align 8
  br label %174

71:                                               ; preds = %35
  %72 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %74 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %73, i32 0, i32 0
  %75 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %74, align 8
  %76 = icmp ne %struct.nf_ct_ext* %72, %75
  br i1 %76, label %77, label %149

77:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %136, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @NF_CT_EXT_NUM, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %139

82:                                               ; preds = %78
  %83 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @nf_ct_ext_exist(%struct.nf_conn* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %136

88:                                               ; preds = %82
  %89 = call i32 (...) @rcu_read_lock()
  %90 = load i32*, i32** @nf_ct_ext_types, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.nf_ct_ext_type* @rcu_dereference(i32 %94)
  store %struct.nf_ct_ext_type* %95, %struct.nf_ct_ext_type** %12, align 8
  %96 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %97 = icmp ne %struct.nf_ct_ext_type* %96, null
  br i1 %97, label %98, label %134

98:                                               ; preds = %88
  %99 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %100 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %99, i32 0, i32 1
  %101 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %100, align 8
  %102 = icmp ne i32 (i8*, i8*)* %101, null
  br i1 %102, label %103, label %134

103:                                              ; preds = %98
  %104 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %12, align 8
  %105 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %104, i32 0, i32 1
  %106 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %105, align 8
  %107 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %108 = bitcast %struct.nf_ct_ext* %107 to i8*
  %109 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %110 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %108, i64 %116
  %118 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %119 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %118, i32 0, i32 0
  %120 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %119, align 8
  %121 = bitcast %struct.nf_ct_ext* %120 to i8*
  %122 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %123 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %122, i32 0, i32 0
  %124 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %123, align 8
  %125 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %121, i64 %131
  %133 = call i32 %106(i8* %117, i8* %132)
  br label %134

134:                                              ; preds = %103, %98, %88
  %135 = call i32 (...) @rcu_read_unlock()
  br label %136

136:                                              ; preds = %134, %87
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %78

139:                                              ; preds = %78
  %140 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %141 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %140, i32 0, i32 0
  %142 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %141, align 8
  %143 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %142, i32 0, i32 2
  %144 = load i32, i32* @__nf_ct_ext_free_rcu, align 4
  %145 = call i32 @call_rcu(i32* %143, i32 %144)
  %146 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %147 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %148 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %147, i32 0, i32 0
  store %struct.nf_ct_ext* %146, %struct.nf_ct_ext** %148, align 8
  br label %149

149:                                              ; preds = %139, %71
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %152 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %159 = getelementptr inbounds %struct.nf_ct_ext, %struct.nf_ct_ext* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %161 = bitcast %struct.nf_ct_ext* %160 to i8*
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr i8, i8* %161, i64 %163
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %165, %166
  %168 = call i32 @memset(i8* %164, i32 0, i32 %167)
  %169 = load %struct.nf_ct_ext*, %struct.nf_ct_ext** %8, align 8
  %170 = bitcast %struct.nf_ct_ext* %169 to i8*
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr i8, i8* %170, i64 %172
  store i8* %173, i8** %4, align 8
  br label %174

174:                                              ; preds = %149, %70, %34, %23
  %175 = load i8*, i8** %4, align 8
  ret i8* %175
}

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i8* @nf_ct_ext_create(%struct.nf_ct_ext**, i32, i32) #1

declare dso_local i64 @nf_ct_ext_exist(%struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_ext_type* @rcu_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_ct_ext* @__krealloc(%struct.nf_ct_ext*, i32, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
